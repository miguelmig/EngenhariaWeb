-- pedestrians_last_month [rel8]
create table `pedestrians_last_month` (
   `pedestrian_oid`  integer not null,
   `crosswalk_oid`  integer not null,
  primary key (`pedestrian_oid`, `crosswalk_oid`)
);
alter table `pedestrians_last_month`   add index fk_pedestrians_last_month_pede (`pedestrian_oid`), add constraint fk_pedestrians_last_month_pede foreign key (`pedestrian_oid`) references `pedestrian` (`oid`);
alter table `pedestrians_last_month`   add index fk_pedestrians_last_month_cros (`crosswalk_oid`), add constraint fk_pedestrians_last_month_cros foreign key (`crosswalk_oid`) references `crosswalk` (`oid`);


-- vehicles_last_month [rel9]
create table `vehicles_last_month` (
   `vehicle_oid`  integer not null,
   `crosswalk_oid`  integer not null,
  primary key (`vehicle_oid`, `crosswalk_oid`)
);
alter table `vehicles_last_month`   add index fk_vehicles_last_month_vehicle (`vehicle_oid`), add constraint fk_vehicles_last_month_vehicle foreign key (`vehicle_oid`) references `vehicle` (`oid`);
alter table `vehicles_last_month`   add index fk_vehicles_last_month_crosswa (`crosswalk_oid`), add constraint fk_vehicles_last_month_crosswa foreign key (`crosswalk_oid`) references `crosswalk` (`oid`);


