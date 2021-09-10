.class public final enum Lxf0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxf0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lxf0;

.field public static final enum c:Lxf0;

.field public static final enum d:Lxf0;

.field private static final synthetic e:[Lxf0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lxf0;

    new-instance v1, Lxf0;

    const-string v2, "SYNCHRONIZED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lxf0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxf0;->b:Lxf0;

    aput-object v1, v0, v3

    new-instance v1, Lxf0;

    const-string v2, "PUBLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lxf0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxf0;->c:Lxf0;

    aput-object v1, v0, v3

    new-instance v1, Lxf0;

    const-string v2, "NONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lxf0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxf0;->d:Lxf0;

    aput-object v1, v0, v3

    sput-object v0, Lxf0;->e:[Lxf0;

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

.method public static valueOf(Ljava/lang/String;)Lxf0;
    .locals 1

    const-class v0, Lxf0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxf0;

    return-object p0
.end method

.method public static values()[Lxf0;
    .locals 1

    sget-object v0, Lxf0;->e:[Lxf0;

    invoke-virtual {v0}, [Lxf0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxf0;

    return-object v0
.end method
