.class public final enum Lr90;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr90;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lr90;

.field public static final enum d:Lr90;

.field public static final enum e:Lr90;

.field private static final synthetic f:[Lr90;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lr90;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lr90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr90;->c:Lr90;

    new-instance v1, Lr90;

    const-string v3, "JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "javascript"

    invoke-direct {v1, v3, v4, v5}, Lr90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr90;->d:Lr90;

    new-instance v3, Lr90;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, Lr90;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr90;->e:Lr90;

    const/4 v5, 0x3

    new-array v5, v5, [Lr90;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr90;->f:[Lr90;

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

    iput-object p3, p0, Lr90;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr90;
    .locals 1

    const-class v0, Lr90;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr90;

    return-object p0
.end method

.method public static values()[Lr90;
    .locals 1

    sget-object v0, Lr90;->f:[Lr90;

    invoke-virtual {v0}, [Lr90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr90;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr90;->b:Ljava/lang/String;

    return-object v0
.end method
