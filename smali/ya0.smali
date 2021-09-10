.class public final enum Lya0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lya0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lya0;

.field public static final enum c:Lya0;

.field public static final enum d:Lya0;

.field private static final synthetic e:[Lya0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lya0;

    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lya0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lya0;->b:Lya0;

    .line 2
    new-instance v1, Lya0;

    const-string v3, "TRANSLUCENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lya0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lya0;->c:Lya0;

    .line 3
    new-instance v3, Lya0;

    const-string v5, "CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lya0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lya0;->d:Lya0;

    const/4 v5, 0x3

    new-array v5, v5, [Lya0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lya0;->e:[Lya0;

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

.method public static valueOf(Ljava/lang/String;)Lya0;
    .locals 1

    .line 1
    const-class v0, Lya0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lya0;

    return-object p0
.end method

.method public static values()[Lya0;
    .locals 1

    .line 1
    sget-object v0, Lya0;->e:[Lya0;

    invoke-virtual {v0}, [Lya0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lya0;

    return-object v0
.end method
