.class public final enum Ljp/co/cyberagent/android/gpuimage/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/cyberagent/android/gpuimage/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ljp/co/cyberagent/android/gpuimage/b$a;

.field public static final enum c:Ljp/co/cyberagent/android/gpuimage/b$a;

.field private static final synthetic d:[Ljp/co/cyberagent/android/gpuimage/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/b$a;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/b$a;->b:Ljp/co/cyberagent/android/gpuimage/b$a;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/b$a;

    const-string v3, "CENTER_CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljp/co/cyberagent/android/gpuimage/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljp/co/cyberagent/android/gpuimage/b$a;->c:Ljp/co/cyberagent/android/gpuimage/b$a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljp/co/cyberagent/android/gpuimage/b$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Ljp/co/cyberagent/android/gpuimage/b$a;->d:[Ljp/co/cyberagent/android/gpuimage/b$a;

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

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/b$a;
    .locals 1

    .line 1
    const-class v0, Ljp/co/cyberagent/android/gpuimage/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/cyberagent/android/gpuimage/b$a;

    return-object p0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/b$a;
    .locals 1

    .line 1
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/b$a;->d:[Ljp/co/cyberagent/android/gpuimage/b$a;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/b$a;

    return-object v0
.end method
