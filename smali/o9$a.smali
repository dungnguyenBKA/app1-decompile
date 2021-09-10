.class public final enum Lo9$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo9$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lo9$a;

.field public static final enum c:Lo9$a;

.field public static final enum d:Lo9$a;

.field public static final enum e:Lo9$a;

.field public static final enum f:Lo9$a;

.field private static final synthetic g:[Lo9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lo9$a;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo9$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo9$a;->b:Lo9$a;

    .line 2
    new-instance v1, Lo9$a;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo9$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo9$a;->c:Lo9$a;

    .line 3
    new-instance v3, Lo9$a;

    const-string v5, "SUBTRACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo9$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo9$a;->d:Lo9$a;

    .line 4
    new-instance v5, Lo9$a;

    const-string v7, "INTERSECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lo9$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lo9$a;->e:Lo9$a;

    .line 5
    new-instance v7, Lo9$a;

    const-string v9, "EXCLUDE_INTERSECTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lo9$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lo9$a;->f:Lo9$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lo9$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lo9$a;->g:[Lo9$a;

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

.method public static valueOf(Ljava/lang/String;)Lo9$a;
    .locals 1

    .line 1
    const-class v0, Lo9$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo9$a;

    return-object p0
.end method

.method public static values()[Lo9$a;
    .locals 1

    .line 1
    sget-object v0, Lo9$a;->g:[Lo9$a;

    invoke-virtual {v0}, [Lo9$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo9$a;

    return-object v0
.end method
