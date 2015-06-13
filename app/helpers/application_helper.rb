module ApplicationHelper
  def title(title = nil)
    default_title = '신림동 쑥고개 원룸 투룸 매물 정보'.freeze
    if title.present?
      content_for :title, title
    else
      content_for(:title).presence || default_title
    end
  end

  def meta_keywords(tags = nil)
    default_meta_keywords = '관악구 신림동 서원동 쑥고개 봉천동 원룸 투룸 월세 빌라'.freeze
    if tags.present?
      content_for :meta_keywords, tags
    else
      content_for?(:meta_keywords) ? [content_for(:meta_keywords), default_meta_keywords].join(', ') : default_meta_keywords
    end
  end

  def meta_description(desc = nil)
    default_meta_desc = '쑥고개에 있는 원룸과 투룸 매물입니다. 주인 직거래 매물이며 아래 정보를 확인해보시고 관심이 있으신 분들은 연락 부탁드립니다.'.freeze
    if desc.present?
      content_for :meta_description, desc
    else
      content_for?(:meta_description) ? content_for(:meta_description) : default_meta_desc
    end
  end
end
