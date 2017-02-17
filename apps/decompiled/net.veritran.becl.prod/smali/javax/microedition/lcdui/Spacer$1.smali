.class Ljavax/microedition/lcdui/Spacer$1;
.super Ljava/lang/Object;
.source "Spacer.java"

# interfaces
.implements Lorg/microemu/CustomItemAccess;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/Spacer;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Spacer;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Ljavax/microedition/lcdui/Spacer$1;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomItem()Ljavax/microedition/lcdui/CustomItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$1;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$000(Ljavax/microedition/lcdui/Spacer;)Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrefContentHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 52
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$1;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$000(Ljavax/microedition/lcdui/Spacer;)Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->getPrefContentHeight(I)I

    move-result v0

    return v0
.end method

.method public getPrefContentWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 48
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$1;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$000(Ljavax/microedition/lcdui/Spacer;)Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->getPrefContentWidth(I)I

    move-result v0

    return v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 56
    iget-object v0, p0, Ljavax/microedition/lcdui/Spacer$1;->this$0:Ljavax/microedition/lcdui/Spacer;

    invoke-static {v0}, Ljavax/microedition/lcdui/Spacer;->access$000(Ljavax/microedition/lcdui/Spacer;)Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Spacer$SpacerCustomItem;->paint(Ljavax/microedition/lcdui/Graphics;II)V

    .line 57
    return-void
.end method
