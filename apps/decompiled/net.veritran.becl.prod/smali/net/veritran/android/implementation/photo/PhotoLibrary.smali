.class public Lnet/veritran/android/implementation/photo/PhotoLibrary;
.super Ljava/lang/Object;
.source "PhotoLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;


# static fields
.field public static final CODE_LIBRARY_GALLERY:I = 0x534

.field public static final CODE_LIBRARY_TAKE:I = 0x533

.field public static final FUNCTION:Ljava/lang/String; = "FUNCTION"

.field public static final FUNCTION_GET_FROM_CAMERA:Ljava/lang/String; = "2"

.field public static final IMAGE_NAME:Ljava/lang/String; = "image_name"

.field public static final IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final TAG:Ljava/lang/String; = "Photo"

.field private static instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

.field private vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "preferences_name"

    iput-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->PREFS_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/veritran/android/implementation/photo/PhotoLibrary;)Lnet/veritran/vtuserapplication/api/photo/PhotoListener;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/photo/PhotoLibrary;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    return-object v0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PNG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 158
    .local v2, "storageDir":Ljava/io/File;
    const-string v4, ".png"

    invoke-static {v1, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "image":Ljava/io/File;
    return-object v0
.end method

.method private getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    return-object v0
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const-string v0, "preferences_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lnet/veritran/android/implementation/photo/PhotoLibrary;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;

    invoke-direct {v0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;-><init>()V

    sput-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    .line 52
    :cond_0
    sget-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Application;)Lnet/veritran/android/implementation/photo/PhotoLibrary;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 57
    sget-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;

    invoke-direct {v0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;-><init>()V

    sput-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    .line 62
    :cond_0
    sget-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    iput-object p0, v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->application:Landroid/app/Application;

    .line 64
    sget-object v0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->instance:Lnet/veritran/android/implementation/photo/PhotoLibrary;

    return-object v0
.end method


# virtual methods
.method public getPictureFromGallery(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    .locals 9
    .param p1, "image_Name"    # Ljava/lang/String;
    .param p2, "photoListener"    # Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .prologue
    .line 169
    const-string v3, "Photo"

    const-string v4, " PhotoLibrary getPictureFromGallery"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    if-nez v3, :cond_0

    .line 172
    iput-object p2, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .line 175
    :cond_0
    move-object v0, p1

    .line 177
    .local v0, "image_name":Ljava/lang/String;
    const/16 v2, 0x534

    .line 178
    .local v2, "requestCodeFinal":I
    new-instance v1, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;

    invoke-direct {v1, p0, v0}, Lnet/veritran/android/implementation/photo/PhotoLibrary$2;-><init>(Lnet/veritran/android/implementation/photo/PhotoLibrary;Ljava/lang/String;)V

    .line 188
    .local v1, "pl":Lnet/veritran/vtuserapplication/model/PermissionListener;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, ""

    const/16 v5, 0x534

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Lnet/veritran/VTUserApplicationSmart;->checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z

    .line 189
    return-void
.end method

.method public getPictureFromGalleryIntent(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    .locals 6
    .param p1, "image_Name"    # Ljava/lang/String;
    .param p2, "photoListener"    # Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .prologue
    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v4, "FUNCTION"

    const-string v5, "2"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 199
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 200
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "image_name"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    .line 204
    .local v0, "currentActivity":Lnet/veritran/VTCommonActivity;
    const/16 v4, 0x534

    invoke-virtual {v0, v2, v4}, Lnet/veritran/VTCommonActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public hasCamera()Z
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCameraPermission()Z
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->checkPermissionManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyEndEvent(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Integer;

    .prologue
    .line 208
    const-string v0, "Photo"

    const-string v1, " PhotoLibrary notifyEndEvent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifySuccess()V

    .line 213
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifyError(I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v0, "Photo"

    const-string v1, " PhotoLibrary vtPhotoListener null"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    .locals 9
    .param p1, "image_Name"    # Ljava/lang/String;
    .param p2, "photoListener"    # Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .prologue
    .line 96
    iget-object v3, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    if-nez v3, :cond_0

    .line 97
    iput-object p2, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .line 100
    :cond_0
    move-object v0, p1

    .line 102
    .local v0, "image_name":Ljava/lang/String;
    const/16 v2, 0x533

    .line 103
    .local v2, "requestCodeFinal":I
    new-instance v1, Lnet/veritran/android/implementation/photo/PhotoLibrary$1;

    invoke-direct {v1, p0, v0}, Lnet/veritran/android/implementation/photo/PhotoLibrary$1;-><init>(Lnet/veritran/android/implementation/photo/PhotoLibrary;Ljava/lang/String;)V

    .line 115
    .local v1, "permissionListener":Lnet/veritran/vtuserapplication/model/PermissionListener;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, ""

    const/16 v5, 0x533

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "android.permission.CAMERA"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Lnet/veritran/VTUserApplicationSmart;->checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z

    .line 117
    return-void
.end method

.method public takePictureImplement(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    .locals 7
    .param p1, "image_Name"    # Ljava/lang/String;
    .param p2, "photoListener"    # Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    .prologue
    .line 120
    const-string v5, "Photo"

    const-string v6, " PhotoLibrary takePicture"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->hasCamera()Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    iget-object v5, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    const/16 v6, 0x64

    invoke-interface {v5, v6}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifyError(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->hasCameraPermission()Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    iget-object v5, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    const/16 v6, 0x65

    invoke-interface {v5, v6}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifyError(I)V

    goto :goto_0

    .line 131
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "takePhotoIntent":Landroid/content/Intent;
    :try_start_0
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->createImageFile()Ljava/io/File;

    move-result-object v2

    .line 135
    .local v2, "photoFile":Ljava/io/File;
    const-string v5, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 138
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "image_name"

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v5, "image_path"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    iget-object v5, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 145
    invoke-direct {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v5

    const/16 v6, 0x533

    invoke-virtual {v5, v4, v6}, Lnet/veritran/VTCommonActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "photoFile":Ljava/io/File;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lnet/veritran/android/implementation/photo/PhotoLibrary;->vtPhotoListener:Lnet/veritran/vtuserapplication/api/photo/PhotoListener;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lnet/veritran/vtuserapplication/api/photo/PhotoListener;->notifyError(I)V

    goto :goto_0
.end method
