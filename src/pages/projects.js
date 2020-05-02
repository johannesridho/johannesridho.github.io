import PropTypes from "prop-types";
import React from "react";
import { graphql } from "gatsby";
import { ThemeContext } from "../layouts";
import Blog from "../components/Blog";
import Seo from "../components/Seo";
import Headline from "../components/Article/Headline";
import Article from "../components/Article";

const ProjectPage = props => {
  const {
    data: {
      posts: { edges: posts },
      site: {
        siteMetadata: { facebook }
      }
    }
  } = props;

  const projects = {};
  posts.forEach(edge => {
    const {
      node: {
        frontmatter: { project }
      }
    } = edge;

    if (project && project != null) {
      if (!projects[project]) {
        projects[project] = [];
      }
      projects[project].push(edge);
    }
  });

  const projectList = [];

  for (var key in projects) {
    projectList.push([key, projects[key]]);
  }

  const data = {
    frontmatter: {
      title: "Projects"
    }
  };

  return (
    <React.Fragment>
      <ThemeContext.Consumer>
        {theme => (
          <Article theme={theme}>
            <header>
              <Headline title="Projects" theme={theme} />
            </header>
            <Blog posts={posts} theme={theme} />
          </Article>
        )}
      </ThemeContext.Consumer>

      <Seo data={data} facebook={facebook} />
    </React.Fragment>
  );
};

ProjectPage.propTypes = {
  data: PropTypes.object.isRequired
};

export default ProjectPage;

//eslint-disable-next-line no-undef
export const query = graphql`
  query PostsQuery {
    posts: allMarkdownRemark(
      filter: { fileAbsolutePath: { regex: "//posts/[0-9]+.*--/" } }
      sort: { fields: [fields___prefix], order: DESC }
    ) {
      edges {
        node {
          excerpt
          fields {
            slug
            prefix
          }
          frontmatter {
            title
            cover {
              children {
                ... on ImageSharp {
                  fluid(maxWidth: 800, maxHeight: 360) {
                    ...GatsbyImageSharpFluid_withWebp
                  }
                }
              }
            }
          }
        }
      }
    }
    site {
      siteMetadata {
        facebook {
          appId
        }
      }
    }
  }
`;
