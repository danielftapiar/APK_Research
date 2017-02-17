.class Lcl/santander/smartphone/HomeRaiz$1;
.super Ljava/lang/Object;
.source "HomeRaiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeRaiz;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeRaiz;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeRaiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeRaiz$1;->this$0:Lcl/santander/smartphone/HomeRaiz;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v3, p0, Lcl/santander/smartphone/HomeRaiz$1;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v3}, Lcl/santander/smartphone/HomeRaiz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 57
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcl/santander/smartphone/Home;

    invoke-direct {v2}, Lcl/santander/smartphone/Home;-><init>()V

    .line 59
    .local v2, "home":Lcl/santander/smartphone/Home;
    const v3, 0x7f0600b6

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 62
    return-void
.end method
