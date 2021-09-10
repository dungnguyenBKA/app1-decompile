.class public final enum Lfd0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfd0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lfd0;

.field public static final enum c:Lfd0;

.field public static final enum d:Lfd0;

.field public static final enum e:Lfd0;

.field public static final enum f:Lfd0;

.field public static final enum g:Lfd0;

.field public static final enum h:Lfd0;

.field public static final enum i:Lfd0;

.field public static final enum j:Lfd0;

.field private static final synthetic k:[Lfd0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lfd0;

    new-instance v1, Lfd0;

    const-string v2, "Polish"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->b:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "CollageMaker"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->c:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "InCollage"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->d:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "Magpic"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->e:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "InStory"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->f:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "GlitchCam"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->g:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "PhotoCollageMaker"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->h:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "BackgroundEraser"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->i:Lfd0;

    aput-object v1, v0, v3

    new-instance v1, Lfd0;

    const-string v2, "Body"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lfd0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfd0;->j:Lfd0;

    aput-object v1, v0, v3

    sput-object v0, Lfd0;->k:[Lfd0;

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

.method public static valueOf(Ljava/lang/String;)Lfd0;
    .locals 1

    const-class v0, Lfd0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd0;

    return-object p0
.end method

.method public static values()[Lfd0;
    .locals 1

    sget-object v0, Lfd0;->k:[Lfd0;

    invoke-virtual {v0}, [Lfd0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd0;

    return-object v0
.end method
