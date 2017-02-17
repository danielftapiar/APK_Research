.class public Lnet/veritran/android/implementation/AndroidVTServiceImplementation;
.super Ljava/lang/Object;
.source "AndroidVTServiceImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/processes/VTServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V
    .locals 2
    .param p1, "vts"    # Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .prologue
    .line 23
    new-instance v0, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;

    invoke-direct {v0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;-><init>(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V

    .line 24
    .local v0, "task":Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/AndroidVTServiceImplementationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    return-void
.end method

.method public execute(Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;)V
    .locals 2
    .param p1, "vts"    # Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    .prologue
    .line 30
    new-instance v0, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;

    invoke-direct {v0, p1}, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;-><init>(Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;)V

    .line 31
    .local v0, "task":Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/AndroidVTServiceConfigurationUpdateImplementationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method
