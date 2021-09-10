.class public final enum Lca$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lca$b;

.field public static final enum c:Lca$b;

.field public static final enum d:Lca$b;

.field public static final enum e:Lca$b;

.field private static final synthetic f:[Lca$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lca$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca$b;->b:Lca$b;

    .line 2
    new-instance v1, Lca$b;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lca$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lca$b;->c:Lca$b;

    .line 3
    new-instance v3, Lca$b;

    const-string v5, "INVERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lca$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lca$b;->d:Lca$b;

    .line 4
    new-instance v5, Lca$b;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lca$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lca$b;->e:Lca$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lca$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lca$b;->f:[Lca$b;

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

.method public static valueOf(Ljava/lang/String;)Lca$b;
    .locals 1

    .line 1
    const-class v0, Lca$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca$b;

    return-object p0
.end method

.method public static values()[Lca$b;
    .locals 1

    .line 1
    sget-object v0, Lca$b;->f:[Lca$b;

    invoke-virtual {v0}, [Lca$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca$b;

    return-object v0
.end method
