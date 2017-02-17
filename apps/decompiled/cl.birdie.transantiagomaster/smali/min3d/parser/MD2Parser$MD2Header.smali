.class final Lmin3d/parser/MD2Parser$MD2Header;
.super Ljava/lang/Object;
.source "MD2Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/MD2Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MD2Header"
.end annotation


# instance fields
.field public frameSize:I

.field public id:I

.field public numFrames:I

.field public numGLCommands:I

.field public numSkins:I

.field public numTexCoord:I

.field public numTriangles:I

.field public numVerts:I

.field public offsetEnd:I

.field public offsetFrames:I

.field public offsetGLCommands:I

.field public offsetSkins:I

.field public offsetTexCoord:I

.field public offsetTriangles:I

.field public skinHeight:I

.field public skinWidth:I

.field final synthetic this$0:Lmin3d/parser/MD2Parser;

.field public version:I


# direct methods
.method private constructor <init>(Lmin3d/parser/MD2Parser;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmin3d/parser/MD2Parser;B)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lmin3d/parser/MD2Parser$MD2Header;-><init>(Lmin3d/parser/MD2Parser;)V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->id:I

    .line 215
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->version:I

    .line 217
    iget v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->id:I

    const v1, 0x32504449

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->version:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "This is not a valid MD2 file."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->skinWidth:I

    .line 221
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->skinHeight:I

    .line 222
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->frameSize:I

    .line 224
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numSkins:I

    .line 225
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numVerts:I

    .line 226
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numTexCoord:I

    .line 227
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numTriangles:I

    .line 228
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numGLCommands:I

    .line 229
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->numFrames:I

    .line 231
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetSkins:I

    .line 232
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetTexCoord:I

    .line 233
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetTriangles:I

    .line 234
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetFrames:I

    .line 235
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetGLCommands:I

    .line 236
    iget-object v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->this$0:Lmin3d/parser/MD2Parser;

    invoke-static {p1}, Lmin3d/parser/MD2Parser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/MD2Parser$MD2Header;->offsetEnd:I

    .line 237
    return-void
.end method
