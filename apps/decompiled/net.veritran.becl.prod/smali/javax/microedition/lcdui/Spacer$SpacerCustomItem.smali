.class Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;
.super Ljavax/microedition/lcdui/CustomItem;
.source "Spacer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Spacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpacerCustomItem"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/Spacer;


# direct methods
.method protected constructor <init>(Ljavax/microedition/lcdui/Spacer;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->this$0:Ljavax/microedition/lcdui/Spacer;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/CustomItem;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected getMinContentHeight()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$200(Ljavax/microedition/lcdui/Spacer;)I

    move-result v0

    return v0
.end method

.method protected getMinContentWidth()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$100(Ljavax/microedition/lcdui/Spacer;)I

    move-result v0

    return v0
.end method

.method protected getPrefContentHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 108
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$200(Ljavax/microedition/lcdui/Spacer;)I

    move-result v0

    return v0
.end method

.method protected getPrefContentWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 104
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$100(Ljavax/microedition/lcdui/Spacer;)I

    move-result v0

    return v0
.end method

.method protected paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 112
    return-void
.end method
