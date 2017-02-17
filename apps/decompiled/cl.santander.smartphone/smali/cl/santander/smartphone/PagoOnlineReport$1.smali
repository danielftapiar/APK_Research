.class Lcl/santander/smartphone/PagoOnlineReport$1;
.super Ljava/lang/Object;
.source "PagoOnlineReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoOnlineReport;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoOnlineReport;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoOnlineReport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lcl/santander/smartphone/Global;->m_bCallInitialWSPagoOnline:Z

    .line 111
    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 115
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport$1;->this$0:Lcl/santander/smartphone/PagoOnlineReport;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 117
    return-void
.end method
