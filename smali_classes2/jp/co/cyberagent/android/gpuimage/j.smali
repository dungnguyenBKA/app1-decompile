.class public final enum Ljp/co/cyberagent/android/gpuimage/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/cyberagent/android/gpuimage/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ljp/co/cyberagent/android/gpuimage/j;

.field public static final enum c:Ljp/co/cyberagent/android/gpuimage/j;

.field public static final enum d:Ljp/co/cyberagent/android/gpuimage/j;

.field public static final enum e:Ljp/co/cyberagent/android/gpuimage/j;

.field private static final synthetic f:[Ljp/co/cyberagent/android/gpuimage/j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/j;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/j;->b:Ljp/co/cyberagent/android/gpuimage/j;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/j;

    const-string v3, "ROTATION_90"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljp/co/cyberagent/android/gpuimage/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljp/co/cyberagent/android/gpuimage/j;->c:Ljp/co/cyberagent/android/gpuimage/j;

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/j;

    const-string v5, "ROTATION_180"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljp/co/cyberagent/android/gpuimage/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljp/co/cyberagent/android/gpuimage/j;->d:Ljp/co/cyberagent/android/gpuimage/j;

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/j;

    const-string v7, "ROTATION_270"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljp/co/cyberagent/android/gpuimage/j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljp/co/cyberagent/android/gpuimage/j;->e:Ljp/co/cyberagent/android/gpuimage/j;

    const/4 v7, 0x4

    new-array v7, v7, [Ljp/co/cyberagent/android/gpuimage/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Ljp/co/cyberagent/android/gpuimage/j;->f:[Ljp/co/cyberagent/android/gpuimage/j;

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

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/j;
    .locals 1

    .line 1
    const-class v0, Ljp/co/cyberagent/android/gpuimage/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/cyberagent/android/gpuimage/j;

    return-object p0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/j;
    .locals 1

    .line 1
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/j;->f:[Ljp/co/cyberagent/android/gpuimage/j;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/j;

    return-object v0
.end method
