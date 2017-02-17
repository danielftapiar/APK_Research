.class public Lnet/veritran/android/implementation/push/PushLibrary;
.super Ljava/lang/Object;
.source "PushLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;
    }
.end annotation


# static fields
.field public static final GENERAL_EXCEPTION:I = 0x64

.field public static final INTERNET_CONNECTION_NOT_AVAILABLE:I = 0x66

.field public static final SENDER_ID_NULL:I = 0x67

.field public static final SERVICE_NOT_AVAILABLE:I = 0x65

.field private static instance:Lnet/veritran/android/implementation/push/PushLibrary;


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private final PROPERTY_REG_ID:Ljava/lang/String;

.field private final PROPERTY_SENDER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private lastContext:Landroid/content/Context;

.field private final latchRegister:Ljava/util/concurrent/CountDownLatch;

.field private final latchUnRegister:Ljava/util/concurrent/CountDownLatch;

.field private pushNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private usesGMS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/android/implementation/push/PushLibrary;->instance:Lnet/veritran/android/implementation/push/PushLibrary;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchRegister:Ljava/util/concurrent/CountDownLatch;

    .line 43
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchUnRegister:Ljava/util/concurrent/CountDownLatch;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->lastContext:Landroid/content/Context;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;

    .line 60
    const-string v1, "PushLibrary"

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->TAG:Ljava/lang/String;

    .line 61
    const-string v1, "preferences_name"

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->PREFS_NAME:Ljava/lang/String;

    .line 62
    const-string v1, "registration_id"

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->PROPERTY_REG_ID:Ljava/lang/String;

    .line 63
    const-string v1, "sender_id"

    iput-object v1, p0, Lnet/veritran/android/implementation/push/PushLibrary;->PROPERTY_SENDER_ID:Ljava/lang/String;

    .line 84
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v1

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BB__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->usesGMS:Z

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/veritran/android/implementation/push/PushLibrary;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;

    .prologue
    .line 38
    iget-boolean v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->usesGMS:Z

    return v0
.end method

.method static synthetic access$100(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchUnRegister:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lnet/veritran/android/implementation/push/PushLibrary;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/push/PushLibrary;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchRegister:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 223
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 224
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const-string v0, "preferences_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lnet/veritran/android/implementation/push/PushLibrary;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lnet/veritran/android/implementation/push/PushLibrary;->instance:Lnet/veritran/android/implementation/push/PushLibrary;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lnet/veritran/android/implementation/push/PushLibrary;

    invoke-direct {v0}, Lnet/veritran/android/implementation/push/PushLibrary;-><init>()V

    sput-object v0, Lnet/veritran/android/implementation/push/PushLibrary;->instance:Lnet/veritran/android/implementation/push/PushLibrary;

    .line 53
    :cond_0
    sget-object v0, Lnet/veritran/android/implementation/push/PushLibrary;->instance:Lnet/veritran/android/implementation/push/PushLibrary;

    return-object v0
.end method

.method private getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "registration_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "registrationId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 195
    const-string v2, "PushLibrary"

    const-string v3, "Registration not found."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, ""

    .line 207
    .end local v1    # "registrationId":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 179
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 180
    .local v0, "appVersion":I
    const-string v3, "PushLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving regId on app version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 182
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "registration_id"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method


# virtual methods
.method public addListener(Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;

    .prologue
    .line 161
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public doRegister(Ljava/lang/String;)V
    .locals 4
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    const-string v1, "PushLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRegister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->lastContext:Landroid/content/Context;

    .line 101
    new-instance v1, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;

    invoke-direct {v1, p0, v0, p1}, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;-><init>(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/veritran/android/implementation/push/PushLibrary$RegisterBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public isOnline(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 468
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 469
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    const/4 v2, 0x1

    .line 472
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lnet/veritran/android/implementation/push/PushLibrary;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "regID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public oldGCMRegistrationFinished(ZLjava/lang/String;)V
    .locals 1
    .param p1, "error"    # Z
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 477
    if-nez p1, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->lastContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lnet/veritran/android/implementation/push/PushLibrary;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchRegister:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 483
    return-void
.end method

.method public oldGCMUnRegistrationFinished(Z)V
    .locals 2
    .param p1, "error"    # Z

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 489
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->lastContext:Landroid/content/Context;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lnet/veritran/android/implementation/push/PushLibrary;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->latchUnRegister:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 493
    return-void
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->pushNotificationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    iput-object v0, p0, Lnet/veritran/android/implementation/push/PushLibrary;->lastContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lnet/veritran/android/implementation/push/PushLibrary$1;

    invoke-direct {v1, p0, v0}, Lnet/veritran/android/implementation/push/PushLibrary$1;-><init>(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v1, v2}, Lnet/veritran/android/implementation/push/PushLibrary$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method
