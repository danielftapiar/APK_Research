.class Lcl/santander/smartphone/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Home;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Home;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Home$1;->this$0:Lcl/santander/smartphone/Home;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v2, p0, Lcl/santander/smartphone/Home$1;->this$0:Lcl/santander/smartphone/Home;

    invoke-virtual {v2}, Lcl/santander/smartphone/Home;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 88
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 89
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0600b6

    new-instance v3, Lcl/santander/smartphone/IndicadoresFinancieros;

    invoke-direct {v3}, Lcl/santander/smartphone/IndicadoresFinancieros;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 91
    return-void
.end method
