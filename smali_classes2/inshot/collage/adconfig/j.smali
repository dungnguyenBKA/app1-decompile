.class public final enum Linshot/collage/adconfig/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linshot/collage/adconfig/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Linshot/collage/adconfig/j;

.field public static final enum c:Linshot/collage/adconfig/j;

.field public static final enum d:Linshot/collage/adconfig/j;

.field public static final enum e:Linshot/collage/adconfig/j;

.field public static final enum f:Linshot/collage/adconfig/j;

.field private static final synthetic g:[Linshot/collage/adconfig/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Linshot/collage/adconfig/j;

    new-instance v1, Linshot/collage/adconfig/j;

    const-string v2, "ResultPage"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/j;

    const-string v2, "Picker"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/j;

    const-string v2, "WaterMark"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/j;->d:Linshot/collage/adconfig/j;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/j;

    const-string v2, "Unlock"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/j;->e:Linshot/collage/adconfig/j;

    aput-object v1, v0, v3

    new-instance v1, Linshot/collage/adconfig/j;

    const-string v2, "Splash"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Linshot/collage/adconfig/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linshot/collage/adconfig/j;->f:Linshot/collage/adconfig/j;

    aput-object v1, v0, v3

    sput-object v0, Linshot/collage/adconfig/j;->g:[Linshot/collage/adconfig/j;

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

.method public static valueOf(Ljava/lang/String;)Linshot/collage/adconfig/j;
    .locals 1

    const-class v0, Linshot/collage/adconfig/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linshot/collage/adconfig/j;

    return-object p0
.end method

.method public static values()[Linshot/collage/adconfig/j;
    .locals 1

    sget-object v0, Linshot/collage/adconfig/j;->g:[Linshot/collage/adconfig/j;

    invoke-virtual {v0}, [Linshot/collage/adconfig/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linshot/collage/adconfig/j;

    return-object v0
.end method
