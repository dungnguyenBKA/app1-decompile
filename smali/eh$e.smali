.class public final enum Leh$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Leh$e;

.field public static final enum c:Leh$e;

.field private static final synthetic d:[Leh$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Leh$e;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh$e;->b:Leh$e;

    .line 2
    new-instance v1, Leh$e;

    const-string v3, "QUALITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh$e;->c:Leh$e;

    const/4 v3, 0x2

    new-array v3, v3, [Leh$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Leh$e;->d:[Leh$e;

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

.method public static valueOf(Ljava/lang/String;)Leh$e;
    .locals 1

    .line 1
    const-class v0, Leh$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh$e;

    return-object p0
.end method

.method public static values()[Leh$e;
    .locals 1

    .line 1
    sget-object v0, Leh$e;->d:[Leh$e;

    invoke-virtual {v0}, [Leh$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh$e;

    return-object v0
.end method
