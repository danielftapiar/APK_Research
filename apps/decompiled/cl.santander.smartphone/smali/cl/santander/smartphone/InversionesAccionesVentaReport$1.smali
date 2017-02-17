.class Lcl/santander/smartphone/InversionesAccionesVentaReport$1;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaReport;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaReport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 155
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 156
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 158
    return-void
.end method
