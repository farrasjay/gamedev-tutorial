# Game Dev Tutorial 2

<p align='Center'>
    <a href="https://github.com/sponsors/alexandresanlim">
        <img src="https://img.shields.io/badge/Godot-478CBF?style=for-the-badge&logo=GodotEngine&logoColor=white"/>
            <center>
                <h2>v3.5.3 LTS</h2>
            </center>  
    </a>
</p>

## 🎮 Trigger Question : Playtest 🎮

### 1. Apa saja pesan log yang dicetak pada panel Output?
Ada 2 log message pada output yaitu, "Platform initialized" sebagai tanda node PlatformBlue itu spawn serta disaat object "Blueship" menyentuh ObjectiveArea akan mengeluarkan output log "Reached Objective!".

### 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
Ketika object "Blueship" menyentuh ObjectiveArea akan mengeluarkan output log "Reached Objective!".

### 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Tentu, kaitannya yaitu ObjectiveArea memiliki fungsi on object entered, dimana object yang dimaksud disini yaitu "BlueShip" yang mentrigger output "Reached Objective!" setelah berada pada ObjectiveArea.

##
## 👩‍💻 Trigger Question : Memanipulasi Node & Scene 👩‍💻

### 1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
Sprite berfungsi sebagai texture/design untuk merepresentatifkan sebuah objek.

### 2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
StaticBody2D tidak memiliki attribute seperti mass & weight, sehingga tidak terlalu dipengaruhi oleh gravity dan collision secara default, beda dengan RigidBody2D yang merespon adanya force/collision sebagai mana pada tutorial ini, BlueShip dengan property RigidBody2D bisa menerima dorongan dari Platform StaticBody2D.

### 3. Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Mass dan Weight akan mempengaruhi cara kerja physics objek dengan RigidBody2D tersebut. Semakin besar nilai valuenya maka object yang bersangkutan akan semakin cepat turun pada 2D plane, berlaku juga sebaliknya.

### 4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
StonePlatform tersebut tidak akan interact secara collision dengan objek 2D. Sebagaimana pada contoh di tutorial ini apabila platform tersebut collision disabled, maka BlueShip dengan RigidBody2D tadi akan turun dan melayang pada 2D plane.

### 5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
Representatif BlueShip secara size dan position juga akan berubah mengingat atribut Position, Rotation, dan Scale-lah yang mendetermine bagaimana perawakan BlueShip pada Viewport.

### 6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Karena kedua StonePlatform termasuk child dari node PlatformBlue, sehingga position X & Y nya mengikuti parent nodenya dimana PlatformBlue berada pada (35, 565) maka untuk StonePlatform itu berada di (0, 0).