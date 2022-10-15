class ApiLink {
 final String url_change = 'https://prod.xinhxinh.live/api/v1';

 final String url_category = '/catalog/category';
 final String url_product = '/catalog/product';

 String getUrlCategory() {
   return url_change + url_category;
 }

 String getUrlProduct() {
   return url_change + url_product;
 }

 String getUrlBroadcast(int newestLimit, int newestPage, String type) {
   return '$url_change/marketing/campaign/broadcast?newestLimit=$newestLimit&newestPage=$newestPage&type=$type';
 }

 String getUrlBroadcastByCategory(int page, int limit, String categoryID) {
   return '$url_change/marketing/campaign/search?page=$page&limit=$limit&categoryID=$categoryID';
 }
}