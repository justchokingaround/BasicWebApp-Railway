package de.tum.in.ase.eist;

import org.springframework.stereotype.Service;

@Service
public class QueryProcessor {

  public String process(String query) {
    query = query.toLowerCase();
    if (query.contains("shakespeare")) {
      return "William Shakespeare (26 April 1564 - 23 April 1616) was an " +
          "English poet, playwright, and actor, widely regarded as the greatest " +
          "writer in the English language and the world's pre-eminent dramatist.";
    } else if (query.contains("name")) {
      return "Santiago's Team";
    } else if (query.contains("what does the command git clone")) {
      return "create a copy of the remote repository (fetch + checkout)";
    } else if (query.contains("what does it means DevOps")) {
      return "development and operations";
    } else if (query.contains("what does it means Continuous Deployment")) {
      return "every change that passes the automated tests is deployed automatically";
    } else if (query.contains("what is a container")) {
      return "lightweight abstraction to host software applications in an isolated environment";
    }
    return "Not implemented yet";

  }
}
