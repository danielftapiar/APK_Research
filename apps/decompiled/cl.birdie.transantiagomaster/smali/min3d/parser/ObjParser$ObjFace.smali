.class final Lmin3d/parser/ObjParser$ObjFace;
.super Lmin3d/parser/ParseObjectFace;
.source "ObjParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/ObjParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjFace"
.end annotation


# instance fields
.field final synthetic this$0:Lmin3d/parser/ObjParser;


# direct methods
.method public constructor <init>(Lmin3d/parser/ObjParser;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "materialKey"    # Ljava/lang/String;
    .param p4, "faceLength"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 230
    iput-object p1, p0, Lmin3d/parser/ObjParser$ObjFace;->this$0:Lmin3d/parser/ObjParser;

    .line 231
    invoke-direct {p0}, Lmin3d/parser/ParseObjectFace;-><init>()V

    .line 232
    iput-object p3, p0, Lmin3d/parser/ObjParser$ObjFace;->materialKey:Ljava/lang/String;

    .line 233
    iput p4, p0, Lmin3d/parser/ObjParser$ObjFace;->faceLength:I

    .line 234
    const-string v6, "//"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    move v0, v7

    .line 235
    .local v0, "emptyVt":Z
    :goto_0
    if-eqz v0, :cond_0

    const-string v6, "//"

    const-string v9, "/"

    invoke-virtual {p2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 236
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 237
    .local v4, "parts":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 238
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v9, "/"

    invoke-direct {v5, v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v5, "subParts":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 240
    .local v3, "partLength":I
    if-lt v3, v10, :cond_5

    if-nez v0, :cond_5

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lmin3d/parser/ObjParser$ObjFace;->hasuv:Z

    .line 241
    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    if-ne v3, v10, :cond_1

    if-nez v0, :cond_6

    :cond_1
    :goto_2
    iput-boolean v8, p0, Lmin3d/parser/ObjParser$ObjFace;->hasn:Z

    .line 243
    new-array v6, p4, [I

    iput-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->v:[I

    .line 244
    iget-boolean v6, p0, Lmin3d/parser/ObjParser$ObjFace;->hasuv:Z

    if-eqz v6, :cond_2

    .line 245
    new-array v6, p4, [I

    iput-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->uv:[I

    .line 246
    :cond_2
    iget-boolean v6, p0, Lmin3d/parser/ObjParser$ObjFace;->hasn:Z

    if-eqz v6, :cond_3

    .line 247
    new-array v6, p4, [I

    iput-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->n:[I

    .line 249
    :cond_3
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    add-int/lit8 v6, p4, 0x1

    if-lt v1, v6, :cond_7

    .line 260
    return-void

    .end local v0    # "emptyVt":Z
    .end local v1    # "i":I
    .end local v3    # "partLength":I
    .end local v4    # "parts":Ljava/util/StringTokenizer;
    .end local v5    # "subParts":Ljava/util/StringTokenizer;
    :cond_4
    move v0, v8

    .line 234
    goto :goto_0

    .restart local v0    # "emptyVt":Z
    .restart local v3    # "partLength":I
    .restart local v4    # "parts":Ljava/util/StringTokenizer;
    .restart local v5    # "subParts":Ljava/util/StringTokenizer;
    :cond_5
    move v6, v8

    .line 240
    goto :goto_1

    :cond_6
    move v8, v7

    .line 241
    goto :goto_2

    .line 250
    .restart local v1    # "i":I
    :cond_7
    if-le v1, v7, :cond_8

    .line 251
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "subParts":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/"

    invoke-direct {v5, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .restart local v5    # "subParts":Ljava/util/StringTokenizer;
    :cond_8
    add-int/lit8 v2, v1, -0x1

    .line 254
    .local v2, "index":I
    iget-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->v:[I

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    aput v8, v6, v2

    .line 255
    iget-boolean v6, p0, Lmin3d/parser/ObjParser$ObjFace;->hasuv:Z

    if-eqz v6, :cond_9

    .line 256
    iget-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->uv:[I

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    aput v8, v6, v2

    .line 257
    :cond_9
    iget-boolean v6, p0, Lmin3d/parser/ObjParser$ObjFace;->hasn:Z

    if-eqz v6, :cond_a

    .line 258
    iget-object v6, p0, Lmin3d/parser/ObjParser$ObjFace;->n:[I

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    aput v8, v6, v2

    .line 249
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
