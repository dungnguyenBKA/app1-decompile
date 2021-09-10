.class public final enum Li30;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li30;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Li30;

.field public static final enum c:Li30;

.field public static final enum d:Li30;

.field private static final synthetic e:[Li30;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Li30;

    const-string v1, "USE_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li30;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li30;->b:Li30;

    .line 2
    new-instance v1, Li30;

    const-string v3, "SKIP_CACHE_LOOKUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li30;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li30;->c:Li30;

    .line 3
    new-instance v3, Li30;

    const-string v5, "IGNORE_CACHE_EXPIRATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li30;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li30;->d:Li30;

    const/4 v5, 0x3

    new-array v5, v5, [Li30;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Li30;->e:[Li30;

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

.method public static valueOf(Ljava/lang/String;)Li30;
    .locals 1

    .line 1
    const-class v0, Li30;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li30;

    return-object p0
.end method

.method public static values()[Li30;
    .locals 1

    .line 1
    sget-object v0, Li30;->e:[Li30;

    invoke-virtual {v0}, [Li30;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li30;

    return-object v0
.end method
