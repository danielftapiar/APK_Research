.class public Lcom/prey/preferences/StartPreyPreference;
.super Landroid/preference/DialogPreference;
.source "StartPreyPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 27
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/prey/preferences/StartPreyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;)V

    .line 36
    :cond_0
    return-void
.end method
