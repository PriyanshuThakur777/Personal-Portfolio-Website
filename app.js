const API_URL = '/api/portfolio';

function safe(value, fallback = '') {
    return value ?? fallback;
}

function setText(id, value, fallback = '-') {
    const node = document.getElementById(id);
    if (node) node.textContent = safe(value, fallback);
}

function renderProjects(projects = []) {
    const grid = document.getElementById('projectsGrid');
    grid.innerHTML = '';

    if (!projects.length) {
        grid.innerHTML = '<p>No projects added yet.</p>';
        return;
    }

    projects.forEach((project) => {
        const card = document.createElement('article');
        card.className = 'card';
        card.innerHTML = `
            <h4>${safe(project.title)}</h4>
            <p class="meta">${safe(project.techStack, 'Tech stack not specified')}</p>
            <p>${safe(project.description)}</p>
            <div class="card-links">
                ${project.projectUrl ? `<a href="${project.projectUrl}" target="_blank">Live</a>` : ''}
                ${project.sourceCodeUrl ? `<a href="${project.sourceCodeUrl}" target="_blank">Code</a>` : ''}
            </div>
        `;
        grid.appendChild(card);
    });
}

function renderSkills(skills = []) {
    const list = document.getElementById('skillsList');
    list.innerHTML = '';

    if (!skills.length) {
        list.innerHTML = '<p>No skills added yet.</p>';
        return;
    }

    skills.forEach((skill) => {
        const item = document.createElement('article');
        item.className = 'list-item';
        item.innerHTML = `
            <h4>${safe(skill.name)}</h4>
            <p class="meta">${safe(skill.category, 'General')}</p>
        `;
        list.appendChild(item);
    });
}

function renderCertifications(certs = []) {
    const list = document.getElementById('certList');
    list.innerHTML = '';

    if (!certs.length) {
        list.innerHTML = '<p>No certifications added yet.</p>';
        return;
    }

    certs.forEach((cert) => {
        const item = document.createElement('article');
        item.className = 'list-item';
        item.innerHTML = `
            <h4>${safe(cert.name)}</h4>
            <p class="meta">${safe(cert.issuer)} | ${safe(cert.issueDate)}</p>
            <p>Credential ID: ${safe(cert.credentialId, 'N/A')}</p>
            ${cert.credentialUrl ? `<a href="${cert.credentialUrl}" target="_blank">View Credential</a>` : ''}
        `;
        list.appendChild(item);
    });
}

function renderEducation(education = []) {
    const list = document.getElementById('eduList');
    list.innerHTML = '';

    if (!education.length) {
        list.innerHTML = '<p>No education details added yet.</p>';
        return;
    }

    education.forEach((edu) => {
        const item = document.createElement('article');
        item.className = 'list-item';
        item.innerHTML = `
            <h4>${safe(edu.degree)} in ${safe(edu.fieldOfStudy)}</h4>
            <p class="meta">${safe(edu.institution)} | ${safe(edu.startYear)} - ${safe(edu.endYear)}</p>
            <p>${safe(edu.summary)}</p>
            <p><strong>Score:</strong> ${safe(edu.score, 'N/A')}</p>
        `;
        list.appendChild(item);
    });
}

async function loadPortfolio() {
    try {
        const res = await fetch(API_URL);
        if (!res.ok) throw new Error('Failed to load portfolio data');

        const data = await res.json();
        const intro = data.introduction || {};
        const contact = data.contact || {};

        setText('fullName', intro.fullName, 'Your Full Name');
        setText('roleTitle', intro.roleTitle, 'Full Stack Developer');
        setText('bio', intro.bio, 'Update your profile in MySQL to show your introduction.');
        setText('location', intro.location, '');

        const profileImage = document.getElementById('profileImage');
        profileImage.src = safe(intro.profileImageUrl, 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=500');

        const github = document.getElementById('githubLink');
        const linkedin = document.getElementById('linkedinLink');
        github.href = safe(intro.githubUrl, '#');
        linkedin.href = safe(intro.linkedinUrl, '#');

        const email = document.getElementById('contactEmail');
        email.textContent = safe(contact.email, 'youremail@example.com');
        email.href = `mailto:${safe(contact.email, 'youremail@example.com')}`;

        setText('contactPhone', contact.phone, 'Not provided');
        const website = document.getElementById('contactWebsite');
        website.textContent = safe(contact.website, 'Not provided');
        website.href = safe(contact.website, '#');
        setText('contactAddress', contact.address, 'Not provided');

        renderSkills(data.skills || []);
        renderProjects(data.projects || []);
        renderCertifications(data.certifications || []);
        renderEducation(data.education || []);

        document.getElementById('footerText').textContent = `© ${new Date().getFullYear()} ${safe(intro.fullName, 'Portfolio')}. All rights reserved.`;
    } catch (err) {
        document.getElementById('bio').textContent = 'Could not load data from backend. Ensure Java server is running.';
        console.error(err);
    }
}

loadPortfolio();

