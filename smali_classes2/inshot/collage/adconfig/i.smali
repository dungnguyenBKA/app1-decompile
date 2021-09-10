.class public final enum Linshot/collage/adconfig/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linshot/collage/adconfig/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Linshot/collage/adconfig/i;

.field public static final enum c:Linshot/collage/adconfig/i;

.field public static final enum d:Linshot/collage/adconfig/i;

.field private static final synthetic e:[Linshot/collage/adconfig/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Linshot/collage/adconfig/i;

    new-instance v1, Linshot/collage/adconfig/i;

    const-string v2, "HomePage"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/i;->b:Linshot/collage/adconfig/i;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/i;

    const-string v2, "ResultPage"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/i;

    const-string v2, "Self"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/i;->d:Linshot/collage/adconfig/i;

    aput-object v1, v0, v3

    sput-object v0, Linshot/collage/adconfig/i;->e:[Linshot/collage/adconfig/i;

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

.method public static valueOf(Ljava/lang/String;)Linshot/collage/adconfig/i;
    .locals 1

    const-class v0, Linshot/collage/adconfig/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linshot/collage/adconfig/i;

    return-object p0
.end method

.method public static values()[Linshot/collage/adconfig/i;
    .locals 1

    sget-object v0, Linshot/collage/adconfig/i;->e:[Linshot/collage/adconfig/i;

    invoke-virtual {v0}, [Linshot/collage/adconfig/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linshot/collage/adconfig/i;

    return-object v0
.end method
