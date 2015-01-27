import com.temboo.core.*;
import com.temboo.Library.YouTube.Search.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("lvalley", "myFirstApp", "API_KEY");
void setup() {
  // Run the ListSearchResults Choreo function
  runListSearchResultsChoreo();
}

void runListSearchResultsChoreo() {
  // Create the Choreo object using your Temboo session
  for( int t = 00; t <= 100; t= t + 1){
  ListSearchResults listSearchResultsChoreo = new ListSearchResults(session);

  // Set inputs
  listSearchResultsChoreo.setQuery("Team Edward");
  listSearchResultsChoreo.setPublishedAfter("2008-10-02T15:00:00Z");
  listSearchResultsChoreo.setMaxResults("50");

  // Run the Choreo and store the results
  ListSearchResultsResultSet listSearchResultsResults = listSearchResultsChoreo.run();
  
  // Print results
  println(listSearchResultsResults.getResponse());
  println(listSearchResultsResults.getNewAccessToken());



  // Run the Choreo and store the results

  
  // Print results
  println(listSearchResultsResults.getResponse());
  println(listSearchResultsResults.getNewAccessToken());
  delay(5000);
}
}

