# 🔥 Halısahavar Flutter Geliştiricisi Değerlendirme Projesi

## 📱 State Management
Bana kullanımı kolay geldiği için bu projede provider ve MobX state yönetimlerini kullandım.
<br>
<img src="https://mobx.js.org/img/mobx.png" width="300" height="300">

## 💻 Software Design Pattern
Proje'nin performansı için ve kod tekrarını engellemek açısından singleton sınıflar, abstract factory patterne ve observer tasarım paternine ihtiyaç duydum.


## 📚 Software Architectural Pattern
Projede MVVM yazılım mimari modeli kullandım.
<br>
<img src="https://api.hackathonturkiye.com/media/hosting/images/mvvm.jpg">

## 📁 Foldering
Projemiz core,features,product olmak üzere üç klasörden oluşuyor.Core katmanında tüm projelerde kullandığım, projeden projeye taşıdığım sınıflar,componentler,managerlar vs bulunuyor. Features katmanında ekranlarımız MVVM yazılım mimari modeline göre ayrılıyor. Product kısmında ise projeye özel componentler, sınıflar,managerlar vs bulunuyor.


## 🎁 Packages 
Tasarım kısmında bana çok kolaylık sağlayan propertyleri olduğu için Veli Bacik hocamın [kartal](https://pub.dev/packages/kartal) paketini kullanıyorum.Bunun haricinde json serializable,mobx,build runner provider gibi paketleri kullanıyorum. UI kısmı için kullandığım bir paket yok tüm tasarımı kendim kodladım.


## 🔍 Preview
Proje maçlarım ve kuponlarım olmak üzere iki kısımdan oluşuyor. Maçlarım kısmında api'den gelen maçlar ekranda listelenmektedir. Maçlardan herhangi biri seçildiğinde seçilen maç kuponlar sayfasına eklenmektedir. Seçim devre dışı bırakıldığında seçilen maç kuponlar sayfasından silinmektedir. Kuponlar sayfasında ise hiçbir maç seçili değil ise Kuponlarım Boş yazısı ekranda görülmektedir.Maç seçiili ise seçilen maçlar kuponlarım sayfasında listelenmektedir. Maçların sağında bulunan çöp kutusuna tıklayarak seçili maçı silebiliriz. Sağ altta bulunan + butonuna tıklayarak kupon oluşturabilir maçların oranlarına ve toplam orana ulaşabilirsiniz.



https://user-images.githubusercontent.com/55639112/146671873-931c352f-d19a-452b-948e-eae0c7f73d35.mov

