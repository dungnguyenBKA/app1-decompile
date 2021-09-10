.class public final enum Lo00;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo00;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lo00;

.field public static final enum d:Lo00;

.field public static final enum e:Lo00;

.field public static final enum f:Lo00;

.field private static final synthetic g:[Lo00;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lo00;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo00;->c:Lo00;

    .line 2
    new-instance v1, Lo00;

    const-string v4, "USER_SIDELOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lo00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo00;->d:Lo00;

    .line 3
    new-instance v4, Lo00;

    const-string v6, "TEST_DISTRIBUTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lo00;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lo00;->e:Lo00;

    .line 4
    new-instance v6, Lo00;

    const-string v8, "APP_STORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lo00;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lo00;->f:Lo00;

    new-array v8, v9, [Lo00;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lo00;->g:[Lo00;

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
    iput p3, p0, Lo00;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo00;
    .locals 1

    .line 1
    const-class v0, Lo00;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo00;

    return-object p0
.end method

.method public static values()[Lo00;
    .locals 1

    .line 1
    sget-object v0, Lo00;->g:[Lo00;

    invoke-virtual {v0}, [Lo00;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo00;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lo00;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lo00;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
