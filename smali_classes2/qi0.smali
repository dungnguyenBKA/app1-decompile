.class public final enum Lqi0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqi0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lqi0;

.field public static final enum d:Lqi0;

.field public static final enum e:Lqi0;

.field public static final enum f:Lqi0;

.field public static final enum g:Lqi0;

.field public static final enum h:Lqi0;

.field public static final enum i:Lqi0;

.field public static final enum j:Lqi0;

.field public static final enum k:Lqi0;

.field public static final enum l:Lqi0;

.field public static final enum m:Lqi0;

.field private static final synthetic n:[Lqi0;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lqi0;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lqi0;->c:Lqi0;

    .line 2
    new-instance v1, Lqi0;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lqi0;->d:Lqi0;

    .line 3
    new-instance v3, Lqi0;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lqi0;->e:Lqi0;

    .line 4
    new-instance v5, Lqi0;

    const-string v7, "FLOW_CONTROL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lqi0;->f:Lqi0;

    .line 5
    new-instance v7, Lqi0;

    const-string v9, "REFUSED_STREAM"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lqi0;->g:Lqi0;

    .line 6
    new-instance v9, Lqi0;

    const-string v12, "CANCEL"

    const/4 v13, 0x5

    const/16 v14, 0x8

    invoke-direct {v9, v12, v13, v14}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lqi0;->h:Lqi0;

    .line 7
    new-instance v12, Lqi0;

    const-string v15, "COMPRESSION_ERROR"

    const/4 v13, 0x6

    const/16 v10, 0x9

    invoke-direct {v12, v15, v13, v10}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lqi0;->i:Lqi0;

    .line 8
    new-instance v15, Lqi0;

    const-string v13, "CONNECT_ERROR"

    const/16 v8, 0xa

    invoke-direct {v15, v13, v11, v8}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lqi0;->j:Lqi0;

    .line 9
    new-instance v13, Lqi0;

    const-string v11, "ENHANCE_YOUR_CALM"

    const/16 v6, 0xb

    invoke-direct {v13, v11, v14, v6}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lqi0;->k:Lqi0;

    .line 10
    new-instance v11, Lqi0;

    const-string v14, "INADEQUATE_SECURITY"

    const/16 v4, 0xc

    invoke-direct {v11, v14, v10, v4}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lqi0;->l:Lqi0;

    .line 11
    new-instance v4, Lqi0;

    const-string v14, "HTTP_1_1_REQUIRED"

    const/16 v10, 0xd

    invoke-direct {v4, v14, v8, v10}, Lqi0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lqi0;->m:Lqi0;

    new-array v6, v6, [Lqi0;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v15, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v11, v6, v0

    aput-object v4, v6, v8

    .line 12
    sput-object v6, Lqi0;->n:[Lqi0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lqi0;->b:I

    return-void
.end method

.method public static a(I)Lqi0;
    .locals 4

    .line 1
    invoke-static {}, Lqi0;->values()[Lqi0;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget v3, v2, Lqi0;->b:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lqi0;
    .locals 1

    .line 1
    const-class v0, Lqi0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqi0;

    return-object p0
.end method

.method public static values()[Lqi0;
    .locals 1

    .line 1
    sget-object v0, Lqi0;->n:[Lqi0;

    invoke-virtual {v0}, [Lqi0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqi0;

    return-object v0
.end method
