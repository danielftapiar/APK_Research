.class public Lnet/veritran/becl/prod/VTSetupInitializer;
.super Ljava/lang/Object;
.source "VTSetupInitializer.java"


# static fields
.field private static activityResultListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lnet/veritran/becl/prod/VTSetupInitializer;->activityResultListeners:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 30
    sget-object v0, Lnet/veritran/becl/prod/VTSetupInitializer;->activityResultListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static init(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p0, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 63
    new-instance v0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;-><init>()V

    .line 64
    .local v0, "qrLib":Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;
    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->setActivity(Landroid/app/Activity;)V

    .line 65
    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/Setup;->setQrLibraryImplementation(Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;)V

    .line 74
    return-void
.end method

.method public static onCreate(Lnet/veritran/VTCommonActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "activity"    # Lnet/veritran/VTCommonActivity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    return-void
.end method

.method public static onPause(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p0, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 54
    return-void
.end method

.method public static onResume(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p0, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 47
    return-void
.end method
