.class Lcl/santander/smartphone/InversionesDepositos$2;
.super Ljava/lang/Object;
.source "InversionesDepositos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositos;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositos;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositos$2;->this$0:Lcl/santander/smartphone/InversionesDepositos;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositos$2;->this$0:Lcl/santander/smartphone/InversionesDepositos;

    iget-object v1, v1, Lcl/santander/smartphone/InversionesDepositos;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 119
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/InversionesDepositosCobrar;

    invoke-direct {v2}, Lcl/santander/smartphone/InversionesDepositosCobrar;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    return-void
.end method
