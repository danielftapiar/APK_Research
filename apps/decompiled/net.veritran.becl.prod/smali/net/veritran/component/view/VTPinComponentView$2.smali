.class Lnet/veritran/component/view/VTPinComponentView$2;
.super Ljava/lang/Object;
.source "VTPinComponentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTPinComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTPinComponentView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTPinComponentView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTPinComponentView;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView$2;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 120
    const-string v0, "VTPinComponentView"

    const-string v1, "on click pin"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView$2;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTPinComponentView;->forceFocus()V

    .line 123
    return-void
.end method
