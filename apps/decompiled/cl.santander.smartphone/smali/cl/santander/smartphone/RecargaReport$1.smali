.class Lcl/santander/smartphone/RecargaReport$1;
.super Ljava/lang/Object;
.source "RecargaReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/RecargaReport;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/RecargaReport;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/RecargaReport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/RecargaReport$1;->this$0:Lcl/santander/smartphone/RecargaReport;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 118
    sput-boolean v0, Lcl/santander/smartphone/Global;->m_bCallInitialWSRecarga:Z

    .line 119
    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport$1;->this$0:Lcl/santander/smartphone/RecargaReport;

    iget-object v0, v0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport$1;->this$0:Lcl/santander/smartphone/RecargaReport;

    iget-object v0, v0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport$1;->this$0:Lcl/santander/smartphone/RecargaReport;

    iget-object v0, v0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport$1;->this$0:Lcl/santander/smartphone/RecargaReport;

    iget-object v0, v0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 127
    return-void
.end method
