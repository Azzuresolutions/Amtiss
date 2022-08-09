import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:flutter/material.dart';

enum WorkFilterType {
  status,
  activity,
  priority,
}

class CommonData {
  static final filters = Filter(
    statuses: statuses,
    activities: [],
    priorities: priorites,
  );
  static final priorites = [
    PriorityFilter("low"),
    PriorityFilter("medium"),
    PriorityFilter("high"),
  ];
  static final statuses = [
    Status("draft", Colors.grey, 0),
    Status("assigned", Colors.green[800]!, 1),
    Status("approved", Colors.yellow[800]!, 2),
    Status("closed", Colors.yellow[800]!, 3),
  ];
  static final report_statuses = [
    Status("new", Colors.grey, 0),
    Status("in_progress", Colors.green[800]!, 1),
    Status("done", Colors.deepOrange[800]!, 2),
    Status("approved", Colors.deepOrange[800]!, 3),
    Status("disapproved", Colors.deepOrange[800]!, 4),
  ];

  static final job_type = [
    JobType("scheduled", 0),
    JobType("unscheduled", 1),
    JobType("inspection", 2),
    JobType("others", 3),
  ];

  static final job_priority = [
    JobPriority("low", 0),
    JobPriority("medium", 1),
    JobPriority("high", 2),
  ]; static final teamOrUser = [
    JobPriority("team", 0),
    JobPriority("user", 1),
  ];
}

class Filter {
  final List<Status> statuses;
  final List<ActivityFilter>? activities;
  final List<PriorityFilter> priorities;

  Filter({
    required this.statuses,
    this.activities,
    required this.priorities,
  });
}

class ActivityFilter extends WorkFilter {
  final String name;
  final bool isSelected;

  ActivityFilter(this.name, {this.isSelected = false})
      : super(name, isSelected);
}

class PriorityFilter extends WorkFilter {
  final String name;
  final bool isSelected;

  PriorityFilter(
    this.name, {
    this.isSelected = false,
  }) : super(name, isSelected);
}

class Status extends WorkFilter {
  final String name;
  final Color color;
  final int order;
  final bool isSelected;
  Status(
    this.name,
    this.color,
    this.order, {
    this.isSelected = false,
  }) : super(name, isSelected);
}

class WorkFilter {
  final String defaultText;
  final bool defaultSelected;

  WorkFilter(this.defaultText, this.defaultSelected);
}

class JobField {
  final String defaultText;
  final int order;

  JobField(this.defaultText, this.order);
}

class JobType extends JobField{
  final String name;
  final int id;

  JobType(this.name, this.id): super(name, id);
}

class JobPriority extends JobField{
  final String name;
  final int id;

  JobPriority(this.name, this.id): super(name, id);
}

class ResourcesData {
  final AssetItem? category;
  final AssetItem? item;
  final String? quantity;
  final int? id;

  ResourcesData({this.category, this.item, this.quantity, this.id});
}
