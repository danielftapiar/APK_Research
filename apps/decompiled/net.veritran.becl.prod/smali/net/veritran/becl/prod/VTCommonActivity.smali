.class public Lnet/veritran/becl/prod/VTCommonActivity;
.super Lnet/veritran/VTCommonActivity;
.source "VTCommonActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 8
    invoke-static {p0, p1}, Lnet/veritran/becl/prod/VTSetupInitializer;->onCreate(Lnet/veritran/VTCommonActivity;Landroid/os/Bundle;)V

    .line 9
    invoke-super {p0, p1}, Lnet/veritran/VTCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lnet/veritran/becl/prod/VTSetupInitializer;->onPause(Lnet/veritran/VTCommonActivity;)V

    .line 19
    invoke-super {p0}, Lnet/veritran/VTCommonActivity;->onPause()V

    .line 20
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lnet/veritran/becl/prod/VTSetupInitializer;->onResume(Lnet/veritran/VTCommonActivity;)V

    .line 14
    invoke-super {p0}, Lnet/veritran/VTCommonActivity;->onResume()V

    .line 15
    return-void
.end method
