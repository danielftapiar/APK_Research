.class Lcl/santander/smartphone/HomeLogin$myButtonListener;
.super Ljava/lang/Object;
.source "HomeLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/HomeLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeLogin;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/HomeLogin;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcl/santander/smartphone/HomeLogin$myButtonListener;->this$0:Lcl/santander/smartphone/HomeLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/HomeLogin;Lcl/santander/smartphone/HomeLogin$myButtonListener;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcl/santander/smartphone/HomeLogin$myButtonListener;-><init>(Lcl/santander/smartphone/HomeLogin;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v3, 0x7f040002

    const v2, 0x7f040001

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/HomeLogin$myButtonListener;->this$0:Lcl/santander/smartphone/HomeLogin;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeLogin;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    const v1, 0x7f060095

    new-instance v2, Lcl/santander/smartphone/HomeLogin2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcl/santander/smartphone/HomeLogin2;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x7f06009c
        :pswitch_0
    .end packed-switch
.end method
