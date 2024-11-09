import type { Site, Page, Links, Socials } from "@types"

// Global
export const SITE: Site = {
  TITLE: "jortp.com",
  DESCRIPTION: "jortp.com",
  AUTHOR: "Jo",
}

// Work Page
export const WORK: Page = {
  TITLE: "Work",
  DESCRIPTION: "My work experiences",
}

// Blog Page
export const BLOG: Page = {
  TITLE: "Blog",
  DESCRIPTION: "Writing on topics I am passionate about.",
}

// Projects Page 
export const PROJECTS: Page = {
  TITLE: "Projects",
  DESCRIPTION: "List of my projects",
}

export const ACHIEVEMENTS: Page = {
  TITLE: "Achievements",
  DESCRIPTION: "List of my achievements",
}

// Search Page
export const SEARCH: Page = {
  TITLE: "Search",
  DESCRIPTION: "Search anything in this website by keyword",
}

// Links
export const LINKS: Links = [
  { 
    TEXT: "Experiences", 
    HREF: "/work", 
  },
  { 
    TEXT: "Blog", 
    HREF: "/blog", 
  },
  { 
    TEXT: "Projects", 
    HREF: "/projects", 
  },
  { 
    TEXT: "Achievements", 
    HREF: "/achievements", 
  },
]

// Socials
export const SOCIALS: Socials = [
  { 
    NAME: "Email",
    ICON: "email", 
    TEXT: "johan.ridho@gmail.com",
    HREF: "mailto:johan.ridho@gmail.com",
  },
  { 
    NAME: "Github",
    ICON: "github",
    TEXT: "johannesridho",
    HREF: "https://github.com/johannesridho"
  },
  { 
    NAME: "LinkedIn",
    ICON: "linkedin",
    TEXT: "johanridho",
    HREF: "https://www.linkedin.com/in/johanridho",
  },
]

