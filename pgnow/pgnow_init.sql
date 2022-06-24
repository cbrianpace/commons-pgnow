\c pgnow

grant all on schema public to pgnow;

create table public.gatherings (id int, slug varchar(20), eventdt date, title varchar(100));

insert into gatherings (id, slug, eventdt, title) values
(1, 'japan-21-dec-02', '2021-12-02', 'Japan 2021'),
(2, 'gitops-22-feb-09', '2022-02-09', 'OpenShift Commons Gathering on GitOps'),
(3, 'databases-22-feb-23', '2022-02-23', 'OpenShift Commons Gathering on Databases'),
(4, 'israel-22-mar-29', '2022-03-29', 'OpenShift Commons Gathering Israel'),
(5, 'automotive-22-apr-06', '2022-04-06', 'OpenShift Commons Gathering on Automotive'),
(6, 'europe-22-05-17',  '2022-05-17', 'OpenShift Commons Gathering at Kubecon Europe 2022'),
(7, 'dublin-22-jun-23', '2022-06-23', 'OpenShift Commons Gathering Dublin'),
(8, 'london-22-jul-06', '2022-07-06', 'OpenShift Commons Gathering London');

create table public.gatherings_agenda (id int, starttime timestamp, topic varchar(100) );

insert into gatherings_agenda (id, starttime, topic) values
(8, '2022-07-06 09:00', 'Registration Opens'),
(8, '2022-07-06 09:30', 'Keynote: OpenShift Everywhere: Red Hat''s Hybrid Cloud Vision'),
(8, '2022-07-06 10:00', 'OpenShift Release Update and Road Map'),
(8, '2022-07-06 10:30', 'Sponsor''s Lighting Talk: Crunchy Data'),
(8, '2022-07-06 10:40', 'Coffee Break - Trillo in Lightning Talk Corner'),
(8, '2022-07-06 11:00', 'The Rise and Fall…and Rise Again of Fabric'),
(8, '2022-07-06 11:35', 'Building Kubernetes Operators in the Wild - Managing the Lifecycle of Your Application on the Cloud'),
(8, '2022-07-06 12:00', 'Lunch Break - TBD in Lightning Talk Corner'),
(8, '2022-07-06 12:50', 'Case Study: UK Health Security Agency'),
(8, '2022-07-06 13:15', 'Next Generation AI/ML Workloads on OpenShift using knative and Infinispan'),
(8, '2022-07-06 13:40', 'OKD: OpenShift''s Open Source Road Map'),
(8, '2022-07-06 14:00', 'Coffee Break - Cockroach Labs in Lightning Talk Corner'),
(8, '2022-07-06 14:20', 'GitOps Automation on OpenShift'),
(8, '2022-07-06 14:50', 'Taking OpenShift to the Edge with MicroShift'),
(8, '2022-07-06 15:20', 'AMA Session: Live Q/A with Guest Speakers, Red Hat Engineers & Project Leads'),
(8, '2022-07-06 15:35', 'Reception with Couchbase in Lightning Talk Corner');

grant select,insert on public.gatherings to pgnow;
grant select on public.gatherings_agenda to pgnow;

create table public.feedback (id serial, feedbackdt timestamp default current_timestamp, email varchar(200), feedback text, stars int);
grant select,insert,update,delete on public.feedback to pgnow;
grant select, usage on all sequences in schema public to pgnow;