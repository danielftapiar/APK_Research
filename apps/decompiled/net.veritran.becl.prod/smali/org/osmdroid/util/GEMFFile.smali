.class public Lorg/osmdroid/util/GEMFFile;
.super Ljava/lang/Object;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/util/GEMFFile$1;,
        Lorg/osmdroid/util/GEMFFile$GEMFInputStream;,
        Lorg/osmdroid/util/GEMFFile$GEMFRange;
    }
.end annotation


# static fields
.field private static final FILE_COPY_BUFFER_SIZE:I = 0x400

.field private static final FILE_SIZE_LIMIT:J = 0x40000000L

.field private static final TILE_SIZE:I = 0x100

.field private static final U32_SIZE:I = 0x4

.field private static final U64_SIZE:I = 0x8

.field private static final VERSION:I = 0x4


# instance fields
.field private mCurrentSource:I

.field private final mFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocation:Ljava/lang/String;

.field private final mRangeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GEMFFile$GEMFRange;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLimited:Z

.field private final mSources:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "pLocation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 62
    iput-boolean v1, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 63
    iput v1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 89
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 91
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 58
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "pSourceFolders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 50
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 53
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 56
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 59
    new-instance v53, Ljava/util/LinkedHashMap;

    invoke-direct/range {v53 .. v53}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 62
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 63
    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 129
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .local v10, "dirIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/io/File;

    .line 134
    .local v34, "sourceDir":Ljava/io/File;
    new-instance v51, Ljava/util/LinkedHashMap;

    invoke-direct/range {v51 .. v51}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    .local v51, "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .local v4, "arr$":[Ljava/io/File;
    array-length v0, v4

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    move/from16 v22, v20

    .end local v4    # "arr$":[Ljava/io/File;
    .end local v20    # "i$":I
    .end local v24    # "len$":I
    .local v22, "i$":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v50, v4, v22

    .line 140
    .local v50, "zDir":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    new-instance v40, Ljava/util/LinkedHashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    .local v40, "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, "arr$":[Ljava/io/File;
    array-length v0, v5

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v20, 0x0

    .end local v22    # "i$":I
    .restart local v20    # "i$":I
    move/from16 v21, v20

    .end local v5    # "arr$":[Ljava/io/File;
    .end local v20    # "i$":I
    .end local v25    # "len$":I
    .local v21, "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    aget-object v39, v5, v21

    .line 152
    .local v39, "xDir":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    new-instance v46, Ljava/util/LinkedHashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .local v46, "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "arr$":[Ljava/io/File;
    array-length v0, v6

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v20, 0x0

    .end local v21    # "i$":I
    .restart local v20    # "i$":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v45, v6, v20

    .line 161
    .local v45, "yFile":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x2e

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->indexOf(I)I

    move-result v55

    invoke-virtual/range {v53 .. v55}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x2e

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->indexOf(I)I

    move-result v55

    invoke-virtual/range {v53 .. v55}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v46

    move-object/from16 v1, v53

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 141
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v20    # "i$":I
    .end local v26    # "len$":I
    .end local v39    # "xDir":Ljava/io/File;
    .end local v40    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    .end local v45    # "yFile":Ljava/io/File;
    .end local v46    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v22    # "i$":I
    :catch_0
    move-exception v11

    .line 137
    .end local v22    # "i$":I
    :goto_5
    add-int/lit8 v20, v22, 0x1

    .restart local v20    # "i$":I
    move/from16 v22, v20

    .end local v20    # "i$":I
    .restart local v22    # "i$":I
    goto/16 :goto_1

    .line 153
    .end local v22    # "i$":I
    .restart local v21    # "i$":I
    .restart local v39    # "xDir":Ljava/io/File;
    .restart local v40    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    :catch_1
    move-exception v11

    .line 148
    .end local v21    # "i$":I
    :goto_6
    add-int/lit8 v20, v21, 0x1

    .restart local v20    # "i$":I
    move/from16 v21, v20

    .end local v20    # "i$":I
    .restart local v21    # "i$":I
    goto :goto_2

    .line 163
    .end local v21    # "i$":I
    .restart local v6    # "arr$":[Ljava/io/File;
    .restart local v20    # "i$":I
    .restart local v26    # "len$":I
    .restart local v45    # "yFile":Ljava/io/File;
    .restart local v46    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :catch_2
    move-exception v11

    .line 164
    .local v11, "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 171
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v45    # "yFile":Ljava/io/File;
    :cond_0
    new-instance v53, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 174
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v20    # "i$":I
    .end local v26    # "len$":I
    .end local v39    # "xDir":Ljava/io/File;
    .end local v46    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v21    # "i$":I
    :cond_1
    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 177
    .end local v21    # "i$":I
    .end local v40    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    .end local v50    # "zDir":Ljava/io/File;
    .restart local v22    # "i$":I
    :cond_2
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v51

    invoke-virtual {v10, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    .end local v22    # "i$":I
    .end local v34    # "sourceDir":Ljava/io/File;
    .end local v51    # "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    :cond_3
    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    .line 182
    .local v35, "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/LinkedHashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    .local v23, "indexSource":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v32, 0x0

    .line 184
    .local v32, "si":I
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 185
    .local v33, "source":Ljava/lang/String;
    new-instance v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v32, v32, 0x1

    .line 188
    goto :goto_7

    .line 191
    .end local v33    # "source":Ljava/lang/String;
    :cond_4
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v30, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 194
    .restart local v33    # "source":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v53 .. v53}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 197
    .local v52, "zoom":Ljava/lang/Integer;
    new-instance v49, Ljava/util/LinkedHashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/LinkedHashMap;-><init>()V

    .line 200
    .local v49, "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v54, Ljava/util/TreeSet;

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v53 .. v53}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v54 .. v54}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_7
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 202
    .local v38, "x":Ljava/lang/Integer;
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v48, "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v53 .. v53}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    .line 204
    .local v44, "y":Ljava/lang/Integer;
    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 207
    .end local v44    # "y":Ljava/lang/Integer;
    :cond_8
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    if-eqz v53, :cond_7

    .line 211
    invoke-static/range {v48 .. v48}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 213
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_9

    .line 214
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_9
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/List;

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 221
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v38    # "x":Ljava/lang/Integer;
    .end local v48    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    new-instance v43, Ljava/util/LinkedHashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/LinkedHashMap;-><init>()V

    .line 224
    .local v43, "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/List;

    .line 226
    .restart local v48    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v41, Ljava/util/TreeSet;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/Collection;

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 228
    .local v41, "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v42, "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .local v18, "i":I
    :goto_b
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v18

    move/from16 v1, v53

    if-ge v0, v1, :cond_e

    .line 230
    new-instance v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_d

    .line 231
    new-instance v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_c
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 233
    :cond_d
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_c

    .line 234
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v42, Ljava/util/ArrayList;

    .end local v42    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .restart local v42    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_c

    .line 240
    :cond_e
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_b

    .line 241
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 246
    .end local v18    # "i":I
    .end local v41    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v42    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v48    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f
    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_10
    :goto_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/List;

    .line 248
    .restart local v42    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v47, Ljava/util/TreeSet;

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 249
    .local v47, "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v41, Ljava/util/TreeSet;

    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/Collection;

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 251
    .restart local v41    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/16 v53, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 252
    .local v27, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v52

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 253
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 254
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 255
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 257
    invoke-virtual/range {v47 .. v47}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .restart local v18    # "i":I
    :goto_e
    invoke-virtual/range {v47 .. v47}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v18

    move/from16 v1, v53

    if-ge v0, v1, :cond_14

    .line 258
    new-instance v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 259
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    if-nez v53, :cond_11

    .line 260
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 262
    :cond_11
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 257
    :cond_12
    :goto_f
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 265
    :cond_13
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_12

    .line 266
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    const/16 v53, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 269
    .restart local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v52

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 270
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 271
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 272
    invoke-virtual/range {v41 .. v41}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    goto :goto_f

    .line 277
    :cond_14
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    if-eqz v53, :cond_10

    .line 278
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 286
    .end local v18    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v33    # "source":Ljava/lang/String;
    .end local v41    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v42    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v43    # "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v47    # "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v49    # "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v52    # "zoom":Ljava/lang/Integer;
    :cond_15
    const/16 v36, 0x0

    .line 287
    .local v36, "source_list_size":I
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 288
    .restart local v33    # "source":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v53

    add-int/lit8 v53, v53, 0x8

    add-int v36, v36, v53

    .line 289
    goto :goto_10

    .line 291
    .end local v33    # "source":Ljava/lang/String;
    :cond_16
    add-int/lit8 v53, v36, 0xc

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v54

    mul-int/lit8 v54, v54, 0x20

    add-int v53, v53, v54

    add-int/lit8 v53, v53, 0x4

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 300
    .local v28, "offset":J
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_17
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_19

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 301
    .restart local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 303
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .local v38, "x":I
    :goto_11
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-ge v0, v1, :cond_17

    .line 304
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .local v44, "y":I
    :goto_12
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v44

    move/from16 v1, v53

    if-ge v0, v1, :cond_18

    .line 305
    const-wide/16 v54, 0xc

    add-long v28, v28, v54

    .line 304
    add-int/lit8 v44, v44, 0x1

    goto :goto_12

    .line 303
    :cond_18
    add-int/lit8 v38, v38, 0x1

    goto :goto_11

    .line 310
    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v38    # "x":I
    .end local v44    # "y":I
    :cond_19
    move-wide/from16 v16, v28

    .line 312
    .local v16, "headerSize":J
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v53, "rw"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v13, "gemfFile":Ljava/io/RandomAccessFile;
    const/16 v53, 0x4

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 318
    const/16 v53, 0x100

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 321
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedHashMap;->size()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 324
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_13
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 325
    .restart local v33    # "source":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 326
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 327
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_13

    .line 331
    .end local v33    # "source":Ljava/lang/String;
    :cond_1a
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 334
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_14
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 335
    .restart local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 336
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 337
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 338
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 339
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 340
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 341
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    move-wide/from16 v0, v54

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_14

    .line 345
    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_1b
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 346
    .restart local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .restart local v38    # "x":I
    :goto_15
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-ge v0, v1, :cond_1c

    .line 347
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .restart local v44    # "y":I
    :goto_16
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v44

    move/from16 v1, v53

    if-ge v0, v1, :cond_1d

    .line 348
    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 349
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v53, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/io/File;

    invoke-virtual/range {v53 .. v53}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 352
    .local v14, "fileSize":J
    long-to-int v0, v14

    move/from16 v53, v0

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 353
    add-long v28, v28, v14

    .line 347
    add-int/lit8 v44, v44, 0x1

    goto :goto_16

    .line 346
    .end local v14    # "fileSize":J
    :cond_1d
    add-int/lit8 v38, v38, 0x1

    goto :goto_15

    .line 362
    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v38    # "x":I
    .end local v44    # "y":I
    :cond_1e
    const/16 v53, 0x400

    move/from16 v0, v53

    new-array v7, v0, [B

    .line 364
    .local v7, "buf":[B
    move-wide/from16 v8, v16

    .line 365
    .local v8, "currentOffset":J
    const/4 v12, 0x0

    .line 367
    .local v12, "fileIndex":I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_23

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 368
    .restart local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .restart local v38    # "x":I
    :goto_17
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-ge v0, v1, :cond_1f

    .line 369
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .restart local v44    # "y":I
    :goto_18
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    add-int/lit8 v53, v53, 0x1

    move/from16 v0, v44

    move/from16 v1, v53

    if-ge v0, v1, :cond_22

    .line 371
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v53, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/io/File;

    invoke-virtual/range {v53 .. v53}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 374
    .restart local v14    # "fileSize":J
    add-long v54, v8, v14

    const-wide/32 v56, 0x40000000

    cmp-long v53, v54, v56

    if-lez v53, :cond_20

    .line 375
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 376
    add-int/lit8 v12, v12, 0x1

    .line 377
    new-instance v13, Ljava/io/RandomAccessFile;

    .end local v13    # "gemfFile":Ljava/io/RandomAccessFile;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "-"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, "rw"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .restart local v13    # "gemfFile":Ljava/io/RandomAccessFile;
    const-wide/16 v8, 0x0

    .line 383
    :goto_19
    new-instance v37, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v53, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/LinkedHashMap;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/io/File;

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 388
    .local v37, "tile":Ljava/io/FileInputStream;
    const/16 v53, 0x0

    const/16 v54, 0x400

    move-object/from16 v0, v37

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v31

    .line 389
    .local v31, "read":I
    :goto_1a
    const/16 v53, -0x1

    move/from16 v0, v31

    move/from16 v1, v53

    if-eq v0, v1, :cond_21

    .line 390
    const/16 v53, 0x0

    move/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v13, v7, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 391
    const/16 v53, 0x0

    const/16 v54, 0x400

    move-object/from16 v0, v37

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v31

    goto :goto_1a

    .line 380
    .end local v31    # "read":I
    .end local v37    # "tile":Ljava/io/FileInputStream;
    :cond_20
    add-long/2addr v8, v14

    goto :goto_19

    .line 394
    .restart local v31    # "read":I
    .restart local v37    # "tile":Ljava/io/FileInputStream;
    :cond_21
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileInputStream;->close()V

    .line 369
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_18

    .line 368
    .end local v14    # "fileSize":J
    .end local v31    # "read":I
    .end local v37    # "tile":Ljava/io/FileInputStream;
    :cond_22
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_17

    .line 399
    .end local v27    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v38    # "x":I
    .end local v44    # "y":I
    :cond_23
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 402
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 403
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 404
    return-void
.end method

.method private openFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "base":Ljava/io/File;
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 436
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, "nextFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    return-void
.end method

.method private readHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 454
    .local v2, "baseFile":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    .line 455
    .local v3, "file":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    .line 460
    .local v14, "version":I
    const/4 v15, 0x4

    if-eq v14, v15, :cond_1

    .line 461
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad file version: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 465
    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 466
    .local v13, "tile_size":I
    const/16 v15, 0x100

    if-eq v13, v15, :cond_2

    .line 467
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad tile size: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 471
    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 473
    .local v9, "sourceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_3

    .line 474
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 475
    .local v10, "sourceIndex":I
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 476
    .local v12, "sourceNameLength":I
    new-array v6, v12, [B

    .line 477
    .local v6, "nameData":[B
    const/4 v15, 0x0

    invoke-virtual {v2, v6, v15, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 479
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([B)V

    .line 480
    .local v11, "sourceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 484
    .end local v6    # "nameData":[B
    .end local v10    # "sourceIndex":I
    .end local v11    # "sourceName":Ljava/lang/String;
    .end local v12    # "sourceNameLength":I
    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 485
    .local v7, "num_ranges":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    .line 486
    new-instance v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v15}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 487
    .local v8, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 488
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 489
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 490
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 491
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 492
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 493
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v8, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 496
    .end local v8    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_4
    return-void
.end method


# virtual methods
.method public acceptAnySource()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 534
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v2, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 417
    .local v0, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 419
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method public getInputStream(III)Ljava/io/InputStream;
    .locals 21
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pZ"    # I

    .prologue
    .line 555
    const/16 v17, 0x0

    .line 557
    .local v17, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 559
    .local v18, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p1

    if-gt v0, v3, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p2

    if-lt v0, v3, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p2

    if-gt v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    if-ne v3, v4, :cond_0

    .line 565
    :cond_1
    move-object/from16 v17, v18

    .line 570
    .end local v18    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_2
    if-nez v17, :cond_3

    .line 571
    const/4 v3, 0x0

    .line 616
    :goto_0
    return-object v3

    .line 580
    :cond_3
    :try_start_0
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v13, v3, v4

    .line 581
    .local v13, "numY":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v19, p1, v3

    .line 582
    .local v19, "xIndex":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v20, p2, v3

    .line 583
    .local v20, "yIndex":I
    mul-int v3, v19, v13

    add-int v3, v3, v20

    int-to-long v14, v3

    .line 584
    .local v14, "offset":J
    const-wide/16 v4, 0xc

    mul-long/2addr v14, v4

    .line 585
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 590
    .local v2, "baseFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v2, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 591
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    .line 592
    .local v6, "dataOffset":J
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 595
    .local v8, "dataLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/RandomAccessFile;

    .line 596
    .local v16, "pDataFile":Ljava/io/RandomAccessFile;
    const/4 v12, 0x0

    .line 597
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v6, v4

    if-lez v3, :cond_5

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 600
    .local v10, "fileListCount":I
    :goto_1
    add-int/lit8 v3, v10, -0x1

    if-ge v12, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v6, v4

    if-lez v3, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v6, v4

    .line 604
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 607
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "pDataFile":Ljava/io/RandomAccessFile;
    check-cast v16, Ljava/io/RandomAccessFile;

    .line 611
    .end local v10    # "fileListCount":I
    .restart local v16    # "pDataFile":Ljava/io/RandomAccessFile;
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 613
    new-instance v3, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;-><init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 615
    .end local v2    # "baseFile":Ljava/io/RandomAccessFile;
    .end local v6    # "dataOffset":J
    .end local v8    # "dataLength":I
    .end local v12    # "index":I
    .end local v13    # "numY":I
    .end local v14    # "offset":J
    .end local v16    # "pDataFile":Ljava/io/RandomAccessFile;
    .end local v19    # "xIndex":I
    .end local v20    # "yIndex":I
    :catch_0
    move-exception v9

    .line 616
    .local v9, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getZoomLevels()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 542
    .local v2, "zoomLevels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 543
    .local v1, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v3, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    .end local v1    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_0
    return-object v2
.end method

.method public selectSource(I)V
    .locals 2
    .param p1, "pSource"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 525
    iput p1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 527
    :cond_0
    return-void
.end method
