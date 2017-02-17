.class final Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;
.super Ljava/lang/Object;
.source "ItemizedOverlayControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    .line 107
    :cond_0
    return-void
.end method
