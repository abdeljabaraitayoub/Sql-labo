-- la creation des tableaux
CREATE TABLE
  Users (
    UserID int AUTO_INCREMENT PRIMARY KEY,
    UserName varchar(40),
    UserEmail varchar(40),
    UserRole int,
    SquadID int
  );

CREATE TABLE
  ROLES (
    RoleID int AUTO_INCREMENT PRIMARY KEY,
    RoleName varchar(30)
  );

CREATE TABLE
  Squads (
    SquadID int AUTO_INCREMENT PRIMARY KEY,
    SquadName varchar(30)
  );

CREATE TABLE
  Project (
    SquadID INT,
    ProjectID int AUTO_INCREMENT PRIMARY KEY,
    ProjectName varchar(30),
    ProjectDescription varchar(30),
    DateDepart date,
    DateFinal date
  );

CREATE TABLE
  Ressources (
    ResourceID int AUTO_INCREMENT PRIMARY KEY,
    ResourceName varchar(100),
    SubcategoryID int,
    projectID int
  );

CREATE TABLE
  Category (
    CategoryID int AUTO_INCREMENT PRIMARY KEY,
    CategoryName varchar(30)
  );

CREATE TABLE
  Subcategory (
    SubcategoryID int AUTO_INCREMENT PRIMARY KEY,
    SubcategoryName varchar(30),
    CategoryID int
  );

-- l'insertion de données sur les tableaux
INSERT INTO
  Users (UserName, UserEmail, SquadID, UserRole)
VALUES
  (
    'Abdeljabar Ait Ayoub',
    'abdeljabar.ait.ayoub@gmail.com',
    1,
    2
  ),
  (
    'Abdeljalil El Filaly',
    'abdeljalil.el.filaly@gmail.com',
    5,
    2
  ),
  (
    'Abdellah Bardich',
    'abdellah.bardich@gmail.com',
    4,
    2
  ),
  ('Aicha Ettabet', 'aicha.ettabet@gmail.com', 4, 2),
  (
    'Anass Ait Ouaguerd',
    'anass.ait.ouaguerd@gmail.com',
    3,
    2
  ),
  ('Anass Drissi', 'anass.drissi@gmail.com', 3, 3),
  (
    'Hamza Ezzhar El Idrissi',
    'hamza.ezzhar.el.idrissi@gmail.com',
    4,
    3
  ),
  (
    'Khalid Zennouhi',
    'khalid.zennouhi@gmail.com',
    2,
    2
  ),
  (
    'Khalid Haiddou',
    'khalid.haiddou@gmail.com',
    5,
    2
  ),
  (
    'Khalid El Mati',
    'khalid.el.mati@gmail.com',
    1,
    3
  ),
  ('Latifa Chakir', 'latifa.chakir@gmail.com', 3, 2),
  (
    'Mbarek El Aadraoui',
    'mbarek.el.aadraoui@gmail.com',
    1,
    2
  ),
  (
    'Mohamed Amine Baih',
    'mohamed.amine.baih@gmail.com',
    3,
    2
  ),
  (
    'Mohammed-amine Benmade',
    'mohammed.amine.benmade@gmail.com',
    3,
    2
  ),
  (
    'Nabil El Hakimi',
    'nabil.el.hakimi@gmail.com',
    2,
    3
  ),
  (
    'Niama El Hrychy',
    'niama.el.hrychy@gmail.com',
    2,
    2
  ),
  (
    'Otman Kharbouch',
    'otman.kharbouch@gmail.com',
    2,
    2
  ),
  (
    'Oumaima El Baz',
    'oumaima.el.baz@gmail.com',
    5,
    2
  ),
  (
    'Rabia Ait Imghi',
    'rabia.ait.imghi@gmail.com',
    5,
    3
  ),
  (
    'Soumaya Ait Lmqaddam',
    'soumaya.ait.lmqaddam@gmail.com',
    1,
    2
  ),
  ('Youness Erbai', 'youness.erbai@gmail.com', 4, 2),
  (
    'Zouhair Zerzkhane',
    'zouhair.zerzkhane@gmail.com',
    2,
    2
  ),
  ('aziz', 'aziz@gmail.com', NULL, 1);

INSERT into
  ROLES (RoleName)
VALUES
  ('admin'),
  (' member'),
  (' Leader');

INSERT INTO
  Squads (SquadName)
VALUES
  ('Brogrammers'),
  ('ProDevs'),
  ('CODEZILLA'),
  ('cell13'),
  ('Alpha');

INSERT INTO
  Project (
    ProjectName,
    ProjectDescription,
    DateDepart,
    DateFinal,
    SquadID
  )
VALUES
  (
    '1stBrief',
    'Description',
    '2023-12-10',
    '2023-12-17',
    1
  );

INSERT INTO
  Ressources (ResourceName, SubcategoryID, projectID)
VALUES
  ('Agile Methodology Resource ', 1, 1),
  ('Task Tracking Resource ', 2, NULL),
  ('Web Development Resource ', 3, NULL),
  ('Agile Methodology Resource ', 4, NULL),
  ('Task Tracking Resource ', 5, NULL),
  ('Web Development Resource ', 6, NULL),
  ('Mobile App Development Resource ', 7, NULL),
  ('Social Media Marketing Resource ', 8, NULL),
  ('Content Marketing Resource ', 9, NULL);

INSERT INTO
  Category (CategoryName)
VALUES
  ('Project Management'),
  ('Software Development'),
  ('Marketing');

INSERT INTO
  Subcategory (SubcategoryName, CategoryID)
VALUES
  ('Agile Methodology', 1),
  ('Task Tracking', 1),
  ('Web Development', 2),
  ('Agile Methodology', 1),
  ('Task Tracking', 1),
  ('Web Development', 2),
  ('Mobile App Development', 2),
  ('Social Media Marketing', 3),
  ('Content Marketing', 3);

-- add FOREIGN keys into tables
ALTER TABLE Users ADD FOREIGN KEY (SquadID) REFERENCES Squads (SquadID);

ALTER TABLE Users ADD FOREIGN KEY (UserRole) REFERENCES ROLES (RoleID);

ALTER TABLE Subcategory ADD FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID);

ALTER TABLE Ressources add FOREIGN KEY (SubcategoryID) REFERENCES Subcategory (SubcategoryID);

ALTER TABLE Project add FOREIGN KEY (SquadID) REFERENCES Squads (SquadID);

ALTER TABLE Ressources ADD FOREIGN KEY (projectID) REFERENCES Project (ProjectID);