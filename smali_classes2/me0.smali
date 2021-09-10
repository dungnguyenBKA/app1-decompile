.class public final enum Lme0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lpe0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme0;",
        ">;",
        "Lpe0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lme0;

.field public static final enum c:Lme0;

.field private static final synthetic d:[Lme0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lme0;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme0;->b:Lme0;

    .line 2
    new-instance v1, Lme0;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lme0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lme0;->c:Lme0;

    const/4 v3, 0x2

    new-array v3, v3, [Lme0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lme0;->d:[Lme0;

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

.method public static valueOf(Ljava/lang/String;)Lme0;
    .locals 1

    .line 1
    const-class v0, Lme0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme0;

    return-object p0
.end method

.method public static values()[Lme0;
    .locals 1

    .line 1
    sget-object v0, Lme0;->d:[Lme0;

    invoke-virtual {v0}, [Lme0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme0;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
