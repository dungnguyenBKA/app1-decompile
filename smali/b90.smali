.class public final enum Lb90;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb90;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb90;

.field public static final enum c:Lb90;

.field public static final enum d:Lb90;

.field public static final enum e:Lb90;

.field public static final enum f:Lb90;

.field public static final enum g:Lb90;

.field public static final enum h:Lb90;

.field public static final enum i:Lb90;

.field public static final enum j:Lb90;

.field public static final enum k:Lb90;

.field private static final synthetic l:[Lb90;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lb90;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb90;->b:Lb90;

    .line 2
    new-instance v1, Lb90;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb90;->c:Lb90;

    .line 3
    new-instance v3, Lb90;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb90;->d:Lb90;

    .line 4
    new-instance v5, Lb90;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb90;->e:Lb90;

    .line 5
    new-instance v7, Lb90;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb90;->f:Lb90;

    .line 6
    new-instance v9, Lb90;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb90;->g:Lb90;

    .line 7
    new-instance v11, Lb90;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lb90;->h:Lb90;

    .line 8
    new-instance v13, Lb90;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lb90;->i:Lb90;

    .line 9
    new-instance v15, Lb90;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lb90;->j:Lb90;

    .line 10
    new-instance v14, Lb90;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lb90;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lb90;->k:Lb90;

    const/16 v12, 0xa

    new-array v12, v12, [Lb90;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lb90;->l:[Lb90;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb90;
    .locals 1

    .line 1
    const-class v0, Lb90;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb90;

    return-object p0
.end method

.method public static values()[Lb90;
    .locals 1

    .line 1
    sget-object v0, Lb90;->l:[Lb90;

    invoke-virtual {v0}, [Lb90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb90;

    return-object v0
.end method
