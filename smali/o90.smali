.class public final enum Lo90;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo90;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lo90;

.field public static final enum d:Lo90;

.field public static final enum e:Lo90;

.field private static final synthetic f:[Lo90;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lo90;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lo90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo90;->c:Lo90;

    new-instance v1, Lo90;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lo90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo90;->d:Lo90;

    new-instance v3, Lo90;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lo90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lo90;->e:Lo90;

    const/4 v5, 0x3

    new-array v5, v5, [Lo90;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lo90;->f:[Lo90;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo90;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo90;
    .locals 1

    const-class v0, Lo90;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo90;

    return-object p0
.end method

.method public static values()[Lo90;
    .locals 1

    sget-object v0, Lo90;->f:[Lo90;

    invoke-virtual {v0}, [Lo90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo90;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo90;->b:Ljava/lang/String;

    return-object v0
.end method
