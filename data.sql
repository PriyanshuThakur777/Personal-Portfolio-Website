DELETE FROM skills;
DELETE FROM certifications;
DELETE FROM projects;
DELETE FROM education;
DELETE FROM contacts;
DELETE FROM introductions;

INSERT INTO introductions (full_name, role_title, bio, location, profile_image_url, github_url, linkedin_url)
VALUES (
    'Priyanshu Thakur',
    'Software Developer',
    'Computer Applications graduate with a solid understanding of software development principles and full stack technologies. Experienced in developing academic projects using Python and database technologies. Strong communication, time management, and analytical skills with a keen interest in continuous learning and professional growth. Nationality: Indian. Gender: Male.',
    'Kangra, Himachal Pradesh, India - 176097',
    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=500',
    'https://github.com/',
    'https://linkedin.com/'
);

INSERT INTO contacts (email, phone, website, address)
VALUES (
    'thakurpriyanshu460@gmail.com',
    '+91 9805877665',
    NULL,
    'Kangra, Himachal Pradesh, India - 176097'
);

INSERT INTO skills (name, category) VALUES ('Software Development', 'Core');
INSERT INTO skills (name, category) VALUES ('Full Stack Development', 'Core');
INSERT INTO skills (name, category) VALUES ('HTML, CSS, JavaScript', 'Web');
INSERT INTO skills (name, category) VALUES ('Python Programming', 'Programming');
INSERT INTO skills (name, category) VALUES ('PL/SQL Programming', 'Database');
INSERT INTO skills (name, category) VALUES ('AI, ML, Data Science (Fundamentals)', 'AI/ML');
INSERT INTO skills (name, category) VALUES ('Git', 'Tools');
INSERT INTO skills (name, category) VALUES ('VS Code', 'Tools');

INSERT INTO projects (title, description, tech_stack, project_url, source_code_url, featured)
VALUES (
    'Global Currency Converter and Live Exchange Rates',
    'Built a web application to convert global currencies and display live exchange rates through API integration.',
    'HTML, CSS, JavaScript, API Integration',
    NULL,
    NULL,
    true
);

INSERT INTO projects (title, description, tech_stack, project_url, source_code_url, featured)
VALUES (
    'Facial Recognition Attendance System',
    'Developed an attendance management system using facial recognition concepts for automated marking.',
    'Python, OpenCV, Face Recognition, Database',
    NULL,
    NULL,
    true
);

INSERT INTO projects (title, description, tech_stack, project_url, source_code_url, featured)
VALUES (
    'CarOnScroll Website',
    'Created an interactive website concept with smooth scrolling behavior and modern UI effects.',
    'HTML, CSS, JavaScript',
    NULL,
    NULL,
    false
);

INSERT INTO projects (title, description, tech_stack, project_url, source_code_url, featured)
VALUES (
    'Smart Hospital Management System',
    'Designed a hospital workflow system to manage patient records, appointments, and operational modules.',
    'Full Stack Development, Database Systems',
    NULL,
    NULL,
    true
);

INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('C and C++ Programming', 'Online Course', 'N/A', 'N/A', NULL);
INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('Introduction to Artificial Intelligence', 'Online Course', 'N/A', 'N/A', NULL);
INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('Basics of Data Science', 'Online Course', 'N/A', 'N/A', NULL);
INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('Deep Learning', 'Online Course', 'N/A', 'N/A', NULL);
INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('Computer Vision', 'Online Course', 'N/A', 'N/A', NULL);
INSERT INTO certifications (name, issuer, issue_date, credential_id, credential_url)
VALUES ('Basics of Natural Language Processing', 'Online Course', 'N/A', 'N/A', NULL);

INSERT INTO education (institution, degree, field_of_study, start_year, end_year, score, summary)
VALUES (
    'Career Point University, Gurugram',
    'Bachelor of Computer Applications',
    'Computer Science',
    '08/2022',
    '06/2025',
    'Completed',
    'Built strong fundamentals in software development, programming, and database systems.'
);

INSERT INTO education (institution, degree, field_of_study, start_year, end_year, score, summary)
VALUES (
    'Chandigarh University, Mohali, Punjab',
    'Master of Computer Applications',
    'Computer Science',
    '07/2025',
    'Present',
    'Ongoing',
    'Currently advancing expertise in full stack development and modern computing domains.'
);

