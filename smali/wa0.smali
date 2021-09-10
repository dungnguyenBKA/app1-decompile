.class public final enum Lwa0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwa0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lwa0;

.field public static final enum c:Lwa0;

.field public static final enum d:Lwa0;

.field private static final synthetic e:[Lwa0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lwa0;

    const-string v1, "PARENT_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwa0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwa0;->b:Lwa0;

    new-instance v1, Lwa0;

    const-string v3, "OBSTRUCTION_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lwa0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwa0;->c:Lwa0;

    new-instance v3, Lwa0;

    const-string v5, "UNDERLYING_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lwa0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lwa0;->d:Lwa0;

    const/4 v5, 0x3

    new-array v5, v5, [Lwa0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lwa0;->e:[Lwa0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwa0;
    .locals 1

    const-class v0, Lwa0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwa0;

    return-object p0
.end method

.method public static values()[Lwa0;
    .locals 1

    sget-object v0, Lwa0;->e:[Lwa0;

    invoke-virtual {v0}, [Lwa0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwa0;

    return-object v0
.end method
