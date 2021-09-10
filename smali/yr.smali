.class public final enum Lyr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lyr;

.field public static final enum c:Lyr;

.field public static final enum d:Lyr;

.field private static final synthetic e:[Lyr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lyr;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyr;->b:Lyr;

    .line 2
    new-instance v1, Lyr;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyr;->c:Lyr;

    .line 3
    new-instance v3, Lyr;

    const-string v5, "HIGHEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyr;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyr;->d:Lyr;

    const/4 v5, 0x3

    new-array v5, v5, [Lyr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lyr;->e:[Lyr;

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

.method public static valueOf(Ljava/lang/String;)Lyr;
    .locals 1

    .line 1
    const-class v0, Lyr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyr;

    return-object p0
.end method

.method public static values()[Lyr;
    .locals 1

    .line 1
    sget-object v0, Lyr;->e:[Lyr;

    invoke-virtual {v0}, [Lyr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyr;

    return-object v0
.end method
