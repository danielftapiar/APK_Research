.class Lcl/santander/smartphone/InversionesDepositosReport$1;
.super Ljava/lang/Object;
.source "InversionesDepositosReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosReport;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosReport;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosReport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport$1;->this$0:Lcl/santander/smartphone/InversionesDepositosReport;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 124
    return-void
.end method
