.class Lnet/veritran/component/VTSlidePanel$1;
.super Ljava/lang/Object;
.source "VTSlidePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTSlidePanel;->initSlidePanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTSlidePanel;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTSlidePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    .line 142
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel$1;->this$0:Lnet/veritran/component/VTSlidePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    const-string v0, "VTSlidePanel"

    const-string v1, "onclick"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
