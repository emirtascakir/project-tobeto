import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_tobeto/blocs/calendar/calendar_bloc.dart';
import 'package:project_tobeto/blocs/calendar/calendar_event.dart';
import 'package:project_tobeto/blocs/calendar/calendar_state.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        if (state is Initial) {
          context.read<CalendarBloc>().add(FetchCalendars());
          return const Center(child: CircularProgressIndicator());
        } else if (state is CalendarsFetched) {
          CalendarControllerProvider.of(context)
              .controller
              .addAll(state.calendars);
          return Scaffold(
            body: WeekView(
              controller: CalendarControllerProvider.of(context).controller,
              weekPageHeaderBuilder: WeekHeader.hidden,
              onEventTap: (events, date) {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ListView.builder(
                      itemCount: events.length,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: const Icon(Icons.close, size: 30),
                                  )
                                ],
                              ),
                              Text(
                                events[index].title,
                                style: const TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                events[index].description ?? "",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Başlangıç: ${DateFormat('dd/MM/yyyy HH:mm').format(events[index].startTime!)}",
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Bitiş: ${DateFormat('dd/MM/yyyy HH:mm').format(events[index].endTime!)}",
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              weekDays: const [
                WeekDays.monday,
                WeekDays.tuesday,
                WeekDays.wednesday,
                WeekDays.thursday,
                WeekDays.friday
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
