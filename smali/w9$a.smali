.class public final enum Lw9$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw9$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lw9$a;

.field public static final enum c:Lw9$a;

.field public static final enum d:Lw9$a;

.field private static final synthetic e:[Lw9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lw9$a;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw9$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9$a;->b:Lw9$a;

    .line 2
    new-instance v1, Lw9$a;

    const-string v3, "ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw9$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw9$a;->c:Lw9$a;

    .line 3
    new-instance v3, Lw9$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw9$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw9$a;->d:Lw9$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lw9$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lw9$a;->e:[Lw9$a;

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

.method public static valueOf(Ljava/lang/String;)Lw9$a;
    .locals 1

    .line 1
    const-class v0, Lw9$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw9$a;

    return-object p0
.end method

.method public static values()[Lw9$a;
    .locals 1

    .line 1
    sget-object v0, Lw9$a;->e:[Lw9$a;

    invoke-virtual {v0}, [Lw9$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw9$a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method
