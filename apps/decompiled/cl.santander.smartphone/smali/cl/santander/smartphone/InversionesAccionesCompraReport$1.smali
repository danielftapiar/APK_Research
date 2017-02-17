.class Lcl/santander/smartphone/InversionesAccionesCompraReport$1;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraReport;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraReport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 173
    return-void
.end method
