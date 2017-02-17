.class public Lnet/veritran/component/VTInputPassword;
.super Lnet/veritran/component/VTInputText;
.source "VTInputPassword.java"


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnet/veritran/component/VTInputText;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 16
    invoke-super {p0}, Lnet/veritran/component/VTInputText;->getView()Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, "vtInputTextView":Landroid/view/View;
    instance-of v1, v0, Lnet/veritran/component/view/VTInputTextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 20
    check-cast v1, Lnet/veritran/component/view/VTInputTextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTInputTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 23
    :cond_0
    return-object v0
.end method
