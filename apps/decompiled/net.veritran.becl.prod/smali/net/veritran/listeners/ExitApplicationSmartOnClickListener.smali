.class public Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;
.super Ljava/lang/Object;
.source "ExitApplicationSmartOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private activity:Lnet/veritran/VTAbstractActivity;


# direct methods
.method public constructor <init>(Lnet/veritran/VTAbstractActivity;)V
    .locals 2
    .param p1, "activity"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "ExitApplicationSmartOnClickListener"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;->activity:Lnet/veritran/VTAbstractActivity;

    .line 26
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    const-string v0, "ExitApplicationSmartOnClickListener"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    .line 60
    return-void
.end method
